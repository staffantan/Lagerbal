import 'song.dart';

class Category {
  final String name;
  final List<Song> songs;

  const Category({
    required this.name,
    required this.songs,
  });
}
