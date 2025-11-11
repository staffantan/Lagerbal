import 'dart:io';
import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:path_provider/path_provider.dart';
import '../models/song.dart';
import '../models/category.dart';
import '../models/pdf_export_item.dart';
import '../services/pdf_service.dart';

class PdfExportScreen extends StatefulWidget {
  final List<Category> songbook;

  const PdfExportScreen({
    super.key,
    required this.songbook,
  });

  @override
  State<PdfExportScreen> createState() => _PdfExportScreenState();
}

class _PdfExportScreenState extends State<PdfExportScreen> {
  List<PdfExportItem> selectedItems = [];
  bool _isGenerating = false;
  int _spacerCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exportera till PDF'),
        actions: [
          if (selectedItems.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.clear_all),
              tooltip: 'Rensa alla',
              onPressed: () {
                setState(() {
                  selectedItems.clear();
                });
              },
            ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Selected songs section (reorderable)
          if (selectedItems.isNotEmpty) ...[
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Theme.of(context).colorScheme.primaryContainer,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.library_music,
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Valda element (${selectedItems.length})',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimaryContainer,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Dra för att ändra ordning',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: ReorderableListView.builder(
                padding: const EdgeInsets.all(8.0),
                itemCount: selectedItems.length,
                onReorder: (oldIndex, newIndex) {
                  setState(() {
                    if (newIndex > oldIndex) {
                      newIndex -= 1;
                    }
                    final item = selectedItems.removeAt(oldIndex);
                    selectedItems.insert(newIndex, item);
                  });
                },
                itemBuilder: (context, index) {
                  final item = selectedItems[index];
                  
                  if (item is SpacerItem) {
                    // Spacer item UI
                    return ReorderableDragStartListener(
                      key: ValueKey(item.uniqueId),
                      index: index,
                      child: Card(
                        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        color: Theme.of(context).colorScheme.secondaryContainer.withValues(alpha: 0.3),
                        child: ListTile(
                          leading: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.space_bar,
                                color: Theme.of(context).colorScheme.onSecondaryContainer,
                              ),
                            ],
                          ),
                          title: Text(
                            'Mellanrum',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Theme.of(context).colorScheme.onSecondaryContainer,
                            ),
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.remove_circle_outline),
                            color: Theme.of(context).colorScheme.error,
                            onPressed: () {
                              setState(() {
                                selectedItems.removeAt(index);
                              });
                            },
                          ),
                        ),
                      ),
                    );
                  } else if (item is SongItem) {
                    // Song item UI
                    final song = item.song;
                    return ReorderableDragStartListener(
                      key: ValueKey(item.uniqueId),
                      index: index,
                      child: Card(
                        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        child: ListTile(
                          leading: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircleAvatar(
                                backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
                                child: Text(
                                  '${_getSongNumber(index)}',
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          title: Text(song.title),
                          subtitle: song.author.isNotEmpty ? Text(song.author) : null,
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.space_bar),
                                tooltip: 'Lägg till mellanrum innan',
                                color: Theme.of(context).colorScheme.primary,
                                onPressed: () {
                                  setState(() {
                                    selectedItems.insert(
                                      index,
                                      SpacerItem('${DateTime.now().millisecondsSinceEpoch}_${_spacerCounter++}'),
                                    );
                                  });
                                },
                              ),
                              IconButton(
                                icon: const Icon(Icons.remove_circle_outline),
                                color: Theme.of(context).colorScheme.error,
                                onPressed: () {
                                  setState(() {
                                    selectedItems.removeAt(index);
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
                  
                  return const SizedBox.shrink();
                },
              ),
            ),
            const Divider(height: 1),
          ],

          // Available songs section
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    children: [
                      Text(
                        'Tillgängliga sånger',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      TextButton.icon(
                        onPressed: _selectAllSongs,
                        icon: const Icon(Icons.select_all, size: 18),
                        label: const Text('Välj alla'),
                      ),
                      const SizedBox(width: 8),
                      TextButton.icon(
                        onPressed: _deselectAllSongs,
                        icon: const Icon(Icons.deselect, size: 18),
                        label: const Text('Avmarkera alla'),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    itemCount: widget.songbook.length,
                    itemBuilder: (context, categoryIndex) {
                      final category = widget.songbook[categoryIndex];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              category.name,
                              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ...category.songs.map((song) {
                            final isSelected = selectedItems.whereType<SongItem>().any((item) => item.song.title == song.title);
                            return Card(
                              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                              color: isSelected 
                                  ? Theme.of(context).colorScheme.primaryContainer.withAlpha(128)
                                  : null,
                              child: ListTile(
                                leading: Icon(
                                  isSelected ? Icons.check_circle : Icons.add_circle_outline,
                                  color: isSelected 
                                      ? Theme.of(context).colorScheme.primary
                                      : Theme.of(context).colorScheme.secondary,
                                ),
                                title: Text(song.title),
                                subtitle: song.author.isNotEmpty ? Text(song.author) : null,
                                onTap: () {
                                  setState(() {
                                    if (isSelected) {
                                      selectedItems.removeWhere((item) => item is SongItem && item.song.title == song.title);
                                    } else {
                                      selectedItems.add(SongItem(song));
                                    }
                                  });
                                },
                              ),
                            );
                          }),
                          const SizedBox(height: 8),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      ),
      floatingActionButton: selectedItems.isEmpty
          ? null
          : FloatingActionButton.extended(
              onPressed: _isGenerating ? null : _generatePdf,
              icon: _isGenerating 
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Icon(Icons.picture_as_pdf),
              label: Text(_isGenerating ? 'Genererar...' : 'Skapa PDF'),
            ),
    );
  }

  // Helper method to get song number (excluding spacers)
  int _getSongNumber(int index) {
    int songCount = 0;
    for (int i = 0; i <= index; i++) {
      if (selectedItems[i] is SongItem) {
        songCount++;
      }
    }
    return songCount;
  }

  void _selectAllSongs() {
    setState(() {
      selectedItems.clear();
      // Add all songs from all categories
      for (final category in widget.songbook) {
        for (final song in category.songs) {
          selectedItems.add(SongItem(song));
        }
      }
    });
  }

  void _deselectAllSongs() {
    setState(() {
      selectedItems.clear();
    });
  }

  Future<void> _generatePdf() async {
    if (selectedItems.isEmpty) return;

    setState(() {
      _isGenerating = true;
    });

    try {
      // Generate PDF and get the bytes
      final pdfBytes = await PdfService.generatePdf(selectedItems);
      
      if (mounted) {
        setState(() {
          _isGenerating = false;
        });
        
        // Show preview
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Scaffold(
              appBar: AppBar(
                title: const Text('PDF Förhandsvisning'),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.save),
                    tooltip: 'Spara',
                    onPressed: () async {
                      await _savePdfToFile(pdfBytes);
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.share),
                    tooltip: 'Dela',
                    onPressed: () async {
                      await Printing.sharePdf(
                        bytes: pdfBytes,
                        filename: 'sangbok_${DateTime.now().toString().replaceAll(":", "-")}.pdf',
                      );
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.print),
                    tooltip: 'Skriv ut',
                    onPressed: () async {
                      await Printing.layoutPdf(
                        onLayout: (format) async => pdfBytes,
                      );
                    },
                  ),
                ],
              ),
              body: PdfPreview(
                build: (format) async => pdfBytes,
                allowSharing: false,
                allowPrinting: false,
                canChangePageFormat: false,
                canChangeOrientation: false,
                canDebug: false,
              ),
            ),
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Fel vid PDF-skapande: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isGenerating = false;
        });
      }
    }
  }

  Future<void> _savePdfToFile(List<int> pdfBytes) async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final fileName = 'sangbok_${DateTime.now().toString().replaceAll(":", "-")}.pdf';
      final file = File('${directory.path}/$fileName');
      await file.writeAsBytes(pdfBytes);
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('PDF sparad: ${file.path}'),
            backgroundColor: Colors.green,
            duration: const Duration(seconds: 4),
            action: SnackBarAction(
              label: 'OK',
              textColor: Colors.white,
              onPressed: () {},
            ),
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Fel vid sparande: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}
