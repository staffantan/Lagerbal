import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../models/song.dart';

class SongDetailScreen extends StatelessWidget {
  final Song song;
  final bool isCustomSong;
  final VoidCallback? onDelete;

  const SongDetailScreen({
    super.key,
    required this.song,
    this.isCustomSong = false,
    this.onDelete,
  });

  void _confirmDelete(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Delete Song'),
          content: Text('Are you sure you want to delete "${song.title}"?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () {
                Navigator.pop(context); // Close dialog
                Navigator.pop(context); // Close detail screen
                onDelete?.call(); // Call delete callback
              },
              style: FilledButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.error,
              ),
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
  }

  void _shareSong(BuildContext context) {
    // Convert song to JSON and encode to base64
    final songJson = jsonEncode(song.toJson());
    final base64Data = base64Encode(utf8.encode(songJson));
    final shareLink = 'sangbok://?sang=$base64Data';

    // Copy to clipboard
    Clipboard.setData(ClipboardData(text: shareLink));

    // Show confirmation
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Share link copied to clipboard!'),
        duration: const Duration(seconds: 2),
        action: SnackBarAction(
          label: 'View',
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Share Link'),
                content: SelectableText(shareLink),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Close'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(song.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: isCustomSong && onDelete != null
            ? [
                IconButton(
                  icon: const Icon(Icons.share),
                  tooltip: 'Share Song',
                  onPressed: () => _shareSong(context),
                ),
                IconButton(
                  icon: const Icon(Icons.delete),
                  tooltip: 'Delete Song',
                  onPressed: () => _confirmDelete(context),
                ),
              ]
            : null,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              song.title,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            
            // Melody
            _InfoRow(
              label: 'Melody:',
              value: song.melody,
            ),
            const SizedBox(height: 8),
            
            // Author
            _InfoRow(
              label: 'Author:',
              value: song.author,
            ),
            const SizedBox(height: 24),
            
            // Lyrics
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                song.lyrics,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      height: 1.5,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            value,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
