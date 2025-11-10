import 'package:flutter/material.dart';
import '../models/song.dart';
import '../models/category.dart';
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
  List<Song> selectedSongs = [];
  bool _isGenerating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exportera till PDF'),
        actions: [
          if (selectedSongs.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.clear_all),
              tooltip: 'Rensa alla',
              onPressed: () {
                setState(() {
                  selectedSongs.clear();
                });
              },
            ),
        ],
      ),
      body: Column(
        children: [
          // Selected songs section (reorderable)
          if (selectedSongs.isNotEmpty) ...[
            Container(
              padding: const EdgeInsets.all(16.0),
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
                        'Valda sånger (${selectedSongs.length})',
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
                itemCount: selectedSongs.length,
                onReorder: (oldIndex, newIndex) {
                  setState(() {
                    if (newIndex > oldIndex) {
                      newIndex -= 1;
                    }
                    final song = selectedSongs.removeAt(oldIndex);
                    selectedSongs.insert(newIndex, song);
                  });
                },
                itemBuilder: (context, index) {
                  final song = selectedSongs[index];
                  return Card(
                    key: ValueKey(song.title + index.toString()),
                    margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: ListTile(
                      leading: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.drag_handle,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          const SizedBox(width: 8),
                          CircleAvatar(
                            backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
                            child: Text(
                              '${index + 1}',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.onSecondaryContainer,
                              ),
                            ),
                          ),
                        ],
                      ),
                      title: Text(song.title),
                      subtitle: song.author.isNotEmpty ? Text(song.author) : null,
                      trailing: IconButton(
                        icon: const Icon(Icons.remove_circle_outline),
                        color: Theme.of(context).colorScheme.error,
                        onPressed: () {
                          setState(() {
                            selectedSongs.removeAt(index);
                          });
                        },
                      ),
                    ),
                  );
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
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Tillgängliga sånger',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
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
                            final isSelected = selectedSongs.any((s) => s.title == song.title);
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
                                      selectedSongs.removeWhere((s) => s.title == song.title);
                                    } else {
                                      selectedSongs.add(song);
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
      floatingActionButton: selectedSongs.isEmpty
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

  Future<void> _generatePdf() async {
    if (selectedSongs.isEmpty) return;

    setState(() {
      _isGenerating = true;
    });

    try {
      await PdfService.generateAndOpenPdf(selectedSongs);
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('PDF skapad!'),
            backgroundColor: Colors.green,
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
}
