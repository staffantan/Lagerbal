import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/song.dart';
import '../models/app_settings.dart';

class SongDetailScreen extends StatefulWidget {
  final Song song;
  final bool isCustomSong;
  final VoidCallback? onDelete;
  final bool isFavorite;
  final VoidCallback? onToggleFavorite;
  final double fontSize;
  final AppSettings settings;
  final Function(AppSettings)? onSettingsChanged;

  const SongDetailScreen({
    super.key,
    required this.song,
    this.isCustomSong = false,
    this.onDelete,
    this.isFavorite = false,
    this.onToggleFavorite,
    this.fontSize = 1.0,
    required this.settings,
    this.onSettingsChanged,
  });

  @override
  State<SongDetailScreen> createState() => _SongDetailScreenState();
}

class _SongDetailScreenState extends State<SongDetailScreen> {
  late bool _isFavorite;
  late bool _showGuitarTabs;

  @override
  void initState() {
    super.initState();
    _isFavorite = widget.isFavorite;
    _showGuitarTabs = widget.settings.showGuitarTabs;
  }

  @override
  void didUpdateWidget(SongDetailScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.settings.showGuitarTabs != widget.settings.showGuitarTabs) {
      setState(() {
        _showGuitarTabs = widget.settings.showGuitarTabs;
      });
    }
  }

  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
    widget.onToggleFavorite?.call();
  }

  void _toggleGuitarTabs() {
    setState(() {
      _showGuitarTabs = !_showGuitarTabs;
    });
    final updatedSettings = widget.settings.copyWith(
      showGuitarTabs: _showGuitarTabs,
    );
    widget.onSettingsChanged?.call(updatedSettings);
  }

  void _confirmDelete(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Radera låt'),
          content: Text('Är du säker på att du vill radera "${widget.song.title}"?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Avbryt'),
            ),
            FilledButton(
              onPressed: () {
                Navigator.pop(context); // Close dialog
                Navigator.pop(context); // Close detail screen
                widget.onDelete?.call(); // Call delete callback
              },
              style: FilledButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.error,
              ),
              child: const Text('Radera'),
            ),
          ],
        );
      },
    );
  }

  void _shareSong(BuildContext context) {
    // Convert song to JSON and encode to base64
    final songJson = jsonEncode(widget.song.toJson());
    final base64Data = base64Encode(utf8.encode(songJson));
    final shareLink = 'http://www.ahlvik.se/sangbok/?data=$base64Data';

    // Copy to clipboard
    Clipboard.setData(ClipboardData(text: shareLink));

    // Show confirmation
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Delbar länk kopierad till urklipp!'),
        duration: const Duration(seconds: 2),
        action: SnackBarAction(
          label: 'Visa',
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Dela länk'),
                content: SelectableText(shareLink),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Stäng'),
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
        title: Text(widget.song.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          // Guitar tabs toggle button (only if tabs are available)
          if (widget.song.guitarTabs.isNotEmpty)
            IconButton(
              icon: Icon(_showGuitarTabs ? Icons.music_note : Icons.music_note_outlined),
              tooltip: _showGuitarTabs ? 'Dölj gitarrtabulatur' : 'Visa gitarrtabulatur',
              onPressed: _toggleGuitarTabs,
            ),
          // Favorite button (always visible)
          IconButton(
            icon: Icon(_isFavorite ? Icons.star : Icons.star_border),
            tooltip: _isFavorite ? 'Ta bort från favoriter' : 'Lägg till i favoriter',
            onPressed: _toggleFavorite,
          ),
          // Share and delete buttons (only for custom songs)
          if (widget.isCustomSong && widget.onDelete != null) ...[
            IconButton(
              icon: const Icon(Icons.share),
              tooltip: 'Dela låt',
              onPressed: () => _shareSong(context),
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              tooltip: 'Radera låt',
              onPressed: () => _confirmDelete(context),
            ),
          ],
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              widget.song.title,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            
            // Melodi
            _InfoRow(
              label: 'Melodi:',
              value: widget.song.melody,
            ),
            const SizedBox(height: 8),

            // Författare
            _InfoRow(
              label: 'Författare:',
              value: widget.song.author,
            ),
            const SizedBox(height: 24),

            // Text with optional inline guitar tabs
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: _showGuitarTabs && widget.song.guitarTabs.isNotEmpty
                  ? _buildLyricsWithTabs(context)
                  : Text(
                      widget.song.lyrics,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            height: 1.5,
                            fontSize: (Theme.of(context).textTheme.bodyLarge?.fontSize ?? 16) * widget.fontSize,
                          ),
                    ),
            ),
            
            // About information (if available)
            if (widget.song.about.isNotEmpty) ...[
              const SizedBox(height: 24),
              Text(
                'Om låten:',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  widget.song.about,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        height: 1.5,
                      ),
                ),
              ),
            ],
          ],
        ),
      ),
      ),
    );
  }

  Widget _buildLyricsWithTabs(BuildContext context) {
    final tabLines = widget.song.guitarTabs.split('\n');
    final lyricLines = widget.song.lyrics.split('\n');
    
    final List<Widget> combinedLines = [];
    
    for (int i = 0; i < lyricLines.length; i++) {
      // Add guitar tab line if available
      if (i < tabLines.length && tabLines[i].trim().isNotEmpty) {
        combinedLines.add(
          Text(
            tabLines[i],
            style: GoogleFonts.robotoMono(
                  textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    height: 1.5,
                    fontSize:
                        (Theme.of(context).textTheme.bodyMedium?.fontSize ?? 16) *
                        widget.fontSize,
                  ),
                ),
          ),
        );
      }
      
      // Add lyric line
      combinedLines.add(
        Text(
          lyricLines[i],
          style: GoogleFonts.robotoMono(
                textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  height: 1.5,
                  fontSize: (Theme.of(context).textTheme.bodyMedium?.fontSize ?? 16) * widget.fontSize,
                ),
              ),
        ),
      );
      
      // Add spacing between verses (when there's an empty line in lyrics)
      if (i < lyricLines.length - 1 && lyricLines[i].trim().isEmpty) {
        combinedLines.add(const SizedBox(height: 8));
      }
    }
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: combinedLines,
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
