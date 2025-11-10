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

    // Add cover page
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pw.Center(
            child: pw.Column(
              mainAxisAlignment: pw.MainAxisAlignment.center,
              children: [
                pw.Text(
                  'Sångbok',
                  style: pw.TextStyle(
                    font: boldFont,
                    fontSize: 48,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.SizedBox(height: 20),
                pw.Text(
                  '${songs.length} sånger',
                  style: pw.TextStyle(
                    font: font,
                    fontSize: 24,
                  ),
                ),
                pw.SizedBox(height: 40),
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

    // Add each song
    for (var i = 0; i < songs.length; i++) {
      final song = songs[i];
      
      pdf.addPage(
        pw.MultiPage(
          pageFormat: PdfPageFormat.a4,
          header: (context) {
            return pw.Container(
              alignment: pw.Alignment.centerRight,
              margin: const pw.EdgeInsets.only(bottom: 20),
              padding: const pw.EdgeInsets.only(bottom: 10),
              decoration: const pw.BoxDecoration(
                border: pw.Border(
                  bottom: pw.BorderSide(color: PdfColors.grey300),
                ),
              ),
              child: pw.Text(
                'Sång ${i + 1} av ${songs.length}',
                style: pw.TextStyle(
                  font: font,
                  fontSize: 10,
                  color: PdfColors.grey700,
                ),
              ),
            );
          },
          build: (context) {
            return [
              // Song title
              pw.Text(
                song.title,
                style: pw.TextStyle(
                  font: boldFont,
                  fontSize: 24,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.SizedBox(height: 8),

              // Song metadata
              if (song.author.isNotEmpty) ...[
                pw.Row(
                  children: [
                    pw.Text(
                      'Författare: ',
                      style: pw.TextStyle(
                        font: boldFont,
                        fontSize: 12,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Text(
                      song.author,
                      style: pw.TextStyle(font: font, fontSize: 12),
                    ),
                  ],
                ),
                pw.SizedBox(height: 4),
              ],
              if (song.melody.isNotEmpty) ...[
                pw.Row(
                  children: [
                    pw.Text(
                      'Melodi: ',
                      style: pw.TextStyle(
                        font: boldFont,
                        fontSize: 12,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Text(
                      song.melody,
                      style: pw.TextStyle(font: font, fontSize: 12),
                    ),
                  ],
                ),
                pw.SizedBox(height: 4),
              ],
              
              // Lyrics with inline tabs (without container to allow page breaks)
              ..._buildLyricsWidgets(song, font, monoFont),

              // About section (if present)
              if (song.about.isNotEmpty) ...[
                pw.SizedBox(height: 16),
                pw.Container(
                  padding: const pw.EdgeInsets.all(12),
                  decoration: pw.BoxDecoration(
                    border: pw.Border.all(color: PdfColors.grey400),
                    borderRadius: pw.BorderRadius.circular(4),
                  ),
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text(
                        'Om sången',
                        style: pw.TextStyle(
                          font: boldFont,
                          fontSize: 12,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.SizedBox(height: 8),
                      pw.Text(
                        song.about,
                        style: pw.TextStyle(
                          font: font,
                          fontSize: 11,
                          lineSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ];
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

  static List<pw.Widget> _buildLyricsWidgets(Song song, pw.Font font, pw.Font monoFont) {
    final widgets = <pw.Widget>[];

    if (song.guitarTabs.isEmpty) {
      // No tabs, just show lyrics - split into paragraphs for better page breaks
      final paragraphs = song.lyrics.split('\n\n');
      for (var paragraph in paragraphs) {
        if (paragraph.trim().isNotEmpty) {
          widgets.add(
            pw.Text(
              paragraph.trim(),
              style: pw.TextStyle(
                font: font,
                fontSize: 12,
                lineSpacing: 4,
              ),
            ),
          );
          widgets.add(pw.SizedBox(height: 12));
        }
      }
      return widgets;
    }

    // Show lyrics with inline tabs
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
              fontSize: 10,
              color: PdfColors.blue800,
            ),
          ),
        );
      }

      if (lyricLine.isNotEmpty) {
        widgets.add(
          pw.Text(
            lyricLine,
            style: pw.TextStyle(
              font: font,
              fontSize: 12,
            ),
          ),
        );
      }

      // Add spacing between verses
      if (lyricLine.isEmpty && i < maxLines - 1) {
        widgets.add(pw.SizedBox(height: 8));
      } else {
        widgets.add(pw.SizedBox(height: 2));
      }
    }

    return widgets;
  }
}
