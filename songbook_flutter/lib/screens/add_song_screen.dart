import 'package:flutter/material.dart';
import '../models/song.dart';

class AddSongScreen extends StatefulWidget {
  const AddSongScreen({super.key});

  @override
  State<AddSongScreen> createState() => _AddSongScreenState();
}

class _AddSongScreenState extends State<AddSongScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _authorController = TextEditingController();
  final _melodyController = TextEditingController();
  final _lyricsController = TextEditingController();
  final _aboutController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _authorController.dispose();
    _melodyController.dispose();
    _lyricsController.dispose();
    _aboutController.dispose();
    super.dispose();
  }

  void _saveSong() {
    if (_formKey.currentState!.validate()) {
      final newSong = Song(
        title: _titleController.text.trim(),
        author: _authorController.text.trim(),
        melody: _melodyController.text.trim(),
        lyrics: _lyricsController.text.trim(),
        about: _aboutController.text.trim(),
      );
      Navigator.pop(context, newSong);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Custom Song'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: _saveSong,
            tooltip: 'Save',
          ),
        ],
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // Title
            TextFormField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'Title *',
                hintText: 'Enter song title',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.music_note),
              ),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Please enter a title';
                }
                return null;
              },
              textCapitalization: TextCapitalization.words,
            ),
            const SizedBox(height: 16),

            // Author
            TextFormField(
              controller: _authorController,
              decoration: const InputDecoration(
                labelText: 'Author',
                hintText: 'Enter author name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
              textCapitalization: TextCapitalization.words,
            ),
            const SizedBox(height: 16),

            // Melody
            TextFormField(
              controller: _melodyController,
              decoration: const InputDecoration(
                labelText: 'Melody',
                hintText: 'Enter melody information',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.library_music),
              ),
              textCapitalization: TextCapitalization.sentences,
            ),
            const SizedBox(height: 16),

            // Lyrics
            TextFormField(
              controller: _lyricsController,
              decoration: const InputDecoration(
                labelText: 'Lyrics *',
                hintText: 'Enter song lyrics',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lyrics),
                alignLabelWithHint: true,
              ),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Please enter lyrics';
                }
                return null;
              },
              maxLines: 10,
              textCapitalization: TextCapitalization.sentences,
            ),
            const SizedBox(height: 16),

            // About
            TextFormField(
              controller: _aboutController,
              decoration: const InputDecoration(
                labelText: 'About',
                hintText: 'Additional information about the song',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.info_outline),
                alignLabelWithHint: true,
              ),
              maxLines: 3,
              textCapitalization: TextCapitalization.sentences,
            ),
            const SizedBox(height: 24),

            // Save Button
            FilledButton.icon(
              onPressed: _saveSong,
              icon: const Icon(Icons.save),
              label: const Text('Save Song'),
              style: FilledButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
