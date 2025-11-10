import 'dart:io';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:path_provider/path_provider.dart';
import '../models/song.dart';

class PdfService {
  static Future<void> generateAndOpenPdf(List<Song> songs) async {
    final pdf = pw.Document();

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

    // Add songs in groups of up to 4 per page (2x2 grid layout)
    for (var i = 0; i < songs.length; i += 4) {
      final songsOnPage = songs.skip(i).take(4).toList();
      
      pdf.addPage(
        pw.Page(
          pageFormat: PdfPageFormat.a4,
          build: (context) {
            return pw.Column(
              children: [
                // Top row (2 songs side by side)
                if (songsOnPage.isNotEmpty)
                  pw.Expanded(
                    child: pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        // Song 1 (top left)
                        pw.Expanded(
                          child: pw.Container(
                            padding: const pw.EdgeInsets.all(8),
                            child: pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: _buildSongWidgets(
                                songsOnPage[0],
                                i + 1,
                                songs.length,
                                font,
                                boldFont,
                                monoFont,
                              ),
                            ),
                          ),
                        ),
                        pw.SizedBox(width: 8),
                        // Song 2 (top right)
                        if (songsOnPage.length > 1)
                          pw.Expanded(
                            child: pw.Container(
                              padding: const pw.EdgeInsets.all(8),
                              child: pw.Column(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: _buildSongWidgets(
                                  songsOnPage[1],
                                  i + 2,
                                  songs.length,
                                  font,
                                  boldFont,
                                  monoFont,
                                ),
                              ),
                            ),
                          )
                        else
                          pw.Expanded(child: pw.Container()),
                      ],
                    ),
                  ),
                pw.SizedBox(height: 8),
                // Bottom row (2 songs side by side)
                if (songsOnPage.length > 2)
                  pw.Expanded(
                    child: pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        // Song 3 (bottom left)
                        pw.Expanded(
                          child: pw.Container(
                            padding: const pw.EdgeInsets.all(8),
                            child: pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: _buildSongWidgets(
                                songsOnPage[2],
                                i + 3,
                                songs.length,
                                font,
                                boldFont,
                                monoFont,
                              ),
                            ),
                          ),
                        ),
                        pw.SizedBox(width: 8),
                        // Song 4 (bottom right)
                        if (songsOnPage.length > 3)
                          pw.Expanded(
                            child: pw.Container(
                              padding: const pw.EdgeInsets.all(8),
                              child: pw.Column(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: _buildSongWidgets(
                                  songsOnPage[3],
                                  i + 4,
                                  songs.length,
                                  font,
                                  boldFont,
                                  monoFont,
                                ),
                              ),
                            ),
                          )
                        else
                          pw.Expanded(child: pw.Container()),
                      ],
                    ),
                  )
                else
                  pw.Expanded(child: pw.Container()),
              ],
            );
          },
        ),
      );
    }

    // Save and open the PDF
    if (Platform.isAndroid || Platform.isIOS) {
      // On mobile, use the printing package to show preview/share
      await Printing.layoutPdf(
        onLayout: (format) async => pdf.save(),
      );
    } else {
      // On desktop, save to file and open
      final bytes = await pdf.save();
      final dir = await getApplicationDocumentsDirectory();
      final file = File('${dir.path}/sangbok_${DateTime.now().millisecondsSinceEpoch}.pdf');
      await file.writeAsBytes(bytes);
      
      // Open the PDF
      await Printing.layoutPdf(
        onLayout: (format) async => bytes,
      );
    }
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
          fontSize: 11,
          fontWeight: pw.FontWeight.bold,
        ),
      ),
    );
    widgets.add(pw.SizedBox(height: 3));

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
            fontSize: 8,
            color: PdfColors.grey700,
          ),
        ),
      );
      widgets.add(pw.SizedBox(height: 3));
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
                fontSize: 9,
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
              fontSize: 8,
              color: PdfColors.blue800,
            ),
          ),
        );
      }

      // Add lyric line or spacing if empty
      if (lyricLine.isEmpty) {
        widgets.add(pw.SizedBox(height: 10));
      } else {
        widgets.add(
          pw.Text(
            lyricLine,
            style: pw.TextStyle(
              font: font,
              fontSize: 9,
            ),
          ),
        );
      }
    }

    return widgets;
  }
}
