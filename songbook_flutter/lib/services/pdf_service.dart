import 'dart:io';
import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:path_provider/path_provider.dart';
import '../models/song.dart';
import '../models/pdf_export_item.dart';

class PdfService {
  // Generate PDF and return bytes for preview
  static Future<Uint8List> generatePdf(List<PdfExportItem> items) async {
    final pdf = await _buildPdfDocument(items);
    return pdf.save();
  }
  
  // Generate and open PDF directly (legacy method)
  static Future<void> generateAndOpenPdf(List<PdfExportItem> items) async {
    final bytes = await generatePdf(items);
    
    if (Platform.isAndroid || Platform.isIOS) {
      // On mobile, use the printing package to show preview/share
      await Printing.layoutPdf(
        onLayout: (format) async => bytes,
      );
    } else {
      // On desktop, save to file and open
      final dir = await getApplicationDocumentsDirectory();
      final file = File('${dir.path}/sangbok_${DateTime.now().millisecondsSinceEpoch}.pdf');
      await file.writeAsBytes(bytes);
      
      // Open the PDF
      await Printing.layoutPdf(
        onLayout: (format) async => bytes,
      );
    }
  }

  static Future<pw.Document> _buildPdfDocument(List<PdfExportItem> items) async {
    final pdf = pw.Document();

    // Filter out only songs for cover page and TOC
    final songs = items.whereType<SongItem>().map((item) => item.song).toList();

    // Load a font that supports Swedish characters
    final font = await PdfGoogleFonts.robotoRegular();
    final boldFont = await PdfGoogleFonts.robotoBold();
    final monoFont = await PdfGoogleFonts.robotoMonoRegular();

    // Load icon image
    pw.ImageProvider? iconImage;
    try {
      final iconFile = File('icon.png');
      if (await iconFile.exists()) {
        final bytes = await iconFile.readAsBytes();
        iconImage = pw.MemoryImage(bytes);
      }
    } catch (e) {
      // Icon not found, continue without it
    }

    // Add cover page
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pw.Center(
            child: pw.Column(
              mainAxisAlignment: pw.MainAxisAlignment.center,
              children: [
                if (iconImage != null) ...[
                  pw.Image(iconImage, width: 120, height: 120),
                  pw.SizedBox(height: 30),
                ],
                pw.Text(
                  'Lägerbålssånger',
                  style: pw.TextStyle(
                    font: boldFont,
                    fontSize: 48,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.SizedBox(height: 20),
                pw.Text(
                  DateTime.now().toString().split(' ')[0],
                  style: pw.TextStyle(
                    font: font,
                    fontSize: 16,
                    color: PdfColors.grey700,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );

    // Add table of contents
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text(
                'Innehåll',
                style: pw.TextStyle(
                  font: boldFont,
                  fontSize: 24,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.SizedBox(height: 20),
              ...songs.asMap().entries.map((entry) {
                final index = entry.key;
                final song = entry.value;
                return pw.Padding(
                  padding: const pw.EdgeInsets.symmetric(vertical: 4),
                  child: pw.Row(
                    children: [
                      pw.Text(
                        '${index + 1}.',
                        style: pw.TextStyle(font: font, fontSize: 12),
                      ),
                      pw.SizedBox(width: 8),
                      pw.Expanded(
                        child: pw.Text(
                          song.title,
                          style: pw.TextStyle(font: font, fontSize: 12),
                        ),
                      ),
                      if (song.author.isNotEmpty)
                        pw.Text(
                          song.author,
                          style: pw.TextStyle(
                            font: font,
                            fontSize: 10,
                            color: PdfColors.grey700,
                          ),
                        ),
                    ],
                  ),
                );
              }),
            ],
          );
        },
      ),
    );

    // Create all song widgets in a single column with smart page breaks
    final allSongWidgets = <pw.Widget>[];
    
    int songNumber = 1;
    for (var i = 0; i < items.length; i++) {
      final item = items[i];
      
      if (item is SpacerItem) {
        // Add spacer - force a page break
        allSongWidgets.add(pw.SizedBox(height: 50));
        allSongWidgets.add(pw.NewPage());
      } else if (item is SongItem) {
        final song = item.song;
        
        // Calculate song height estimate
        double songHeight = 27 + 15; // Title + spacing
        
        if (song.author.isNotEmpty || song.melody.isNotEmpty) {
          songHeight += 22 + 15; // Metadata + spacing
        }
        
        // Estimate lyrics height
        final lyricLines = song.lyrics.split('\n');
        for (var line in lyricLines) {
          if (line.isEmpty) {
            songHeight += 20; // Empty line spacing
          } else {
            songHeight += 25; // Text line (22pt font + ~3pt spacing)
          }
        }
        
        // Calculate 20% threshold for page break decision
        final threshold = songHeight * 0.2;
        
        // Add divider and potential page break before song (except first song)
        if (songNumber > 1) {
          allSongWidgets.add(pw.SizedBox(height: 20));
          allSongWidgets.add(pw.Divider(thickness: 1, color: PdfColors.grey400));
          allSongWidgets.add(pw.SizedBox(height: 20));
          
          // Add NewPage widget with threshold - forces new page if insufficient space
          allSongWidgets.add(
            pw.Container(
              height: threshold,
              child: pw.NewPage(),
            ),
          );
        }
        
        // Add song widgets
        allSongWidgets.addAll(_buildSongWidgets(
          song,
          songNumber,
          songs.length,
          font,
          boldFont,
          monoFont,
        ));
        
        songNumber++;
      }
    }
    
    // Create pages with single column layout that maximizes page usage
    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        margin: const pw.EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        build: (context) => allSongWidgets,
      ),
    );

    return pdf;
  }

  static List<pw.Widget> _buildSongWidgets(
    Song song,
    int songNumber,
    int totalSongs,
    pw.Font font,
    pw.Font boldFont,
    pw.Font monoFont,
  ) {
    final widgets = <pw.Widget>[];

    // Song title (without numbering)
    widgets.add(
      pw.Text(
        song.title,
        style: pw.TextStyle(
          font: boldFont,
          fontSize: 27,
          fontWeight: pw.FontWeight.bold,
        ),
      ),
    );
    widgets.add(pw.SizedBox(height: 15));

    // Song metadata (compact)
    if (song.author.isNotEmpty || song.melody.isNotEmpty) {
      final metadata = <String>[];
      if (song.author.isNotEmpty) metadata.add(song.author);
      if (song.melody.isNotEmpty) metadata.add('Mel: ${song.melody}');
      
      widgets.add(
        pw.Text(
          metadata.join(' • '),
          style: pw.TextStyle(
            font: font,
            fontSize: 22,
            color: PdfColors.grey700,
          ),
        ),
      );
      widgets.add(pw.SizedBox(height: 15));
    }

    // Lyrics (compact)
    widgets.addAll(_buildLyricsWidgets(song, font, monoFont));

    return widgets;
  }

  static List<pw.Widget> _buildLyricsWidgets(Song song, pw.Font font, pw.Font monoFont) {
    final widgets = <pw.Widget>[];

    if (song.guitarTabs.isEmpty) {
      // No tabs, just show lyrics - preserve all lines including empty ones
      final lines = song.lyrics.split('\n');
      for (var line in lines) {
        if (line.isEmpty) {
          // Use SizedBox for empty lines to preserve spacing
          widgets.add(pw.SizedBox(height: 20));
        } else {
          widgets.add(
            pw.Text(
              line,
              style: pw.TextStyle(
                font: font,
                fontSize: 22,
                lineSpacing: 1,
              ),
            ),
          );
        }
      }
      return widgets;
    }

    // Show lyrics with inline tabs (compact)
    final tabLines = song.guitarTabs.split('\n');
    final lyricLines = song.lyrics.split('\n');
    final maxLines = tabLines.length > lyricLines.length ? tabLines.length : lyricLines.length;

    for (var i = 0; i < maxLines; i++) {
      final tabLine = i < tabLines.length ? tabLines[i] : '';
      final lyricLine = i < lyricLines.length ? lyricLines[i] : '';

      if (tabLine.isNotEmpty) {
        widgets.add(
          pw.Text(
            tabLine,
            style: pw.TextStyle(
              font: monoFont,
              fontSize: 22,
              color: PdfColors.blue800,
            ),
          ),
        );
      }

      // Add lyric line or spacing if empty
      if (lyricLine.isEmpty) {
        widgets.add(pw.SizedBox(height: 20));
      } else {
        widgets.add(
          pw.Text(
            lyricLine,
            style: pw.TextStyle(
              font: monoFont,
              fontSize: 22,
            ),
          ),
        );
      }
    }

    return widgets;
  }
}
