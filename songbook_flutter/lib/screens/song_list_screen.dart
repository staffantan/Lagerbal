import 'package:flutter/material.dart';
import '../data/sample_songs.dart';
import '../models/category.dart';
import '../models/song.dart';
import 'song_detail_screen.dart';

class SongListScreen extends StatelessWidget {
  const SongListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Songbook'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: sampleSongbook.length,
        itemBuilder: (context, categoryIndex) {
          final category = sampleSongbook[categoryIndex];
          return _CategorySection(category: category);
        },
      ),
    );
  }
}

class _CategorySection extends StatelessWidget {
  final Category category;

  const _CategorySection({required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
          child: Text(
            'Category: ${category.name}',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
        ),
        ...category.songs.map((song) => _SongListTile(song: song)),
        const Divider(height: 1),
      ],
    );
  }
}

class _SongListTile extends StatelessWidget {
  final Song song;

  const _SongListTile({required this.song});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(song.title),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SongDetailScreen(song: song),
          ),
        );
      },
    );
  }
}
