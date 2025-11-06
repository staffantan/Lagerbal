class Song {
  final String title;
  final String author;
  final String melody;
  final String lyrics;
  final String about;

  const Song({
    required this.title,
    required this.author,
    required this.melody,
    required this.lyrics,
    required this.about,
  });

  // Convert Song to JSON
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'author': author,
      'melody': melody,
      'lyrics': lyrics,
      'about': about,
    };
  }

  // Create Song from JSON
  factory Song.fromJson(Map<String, dynamic> json) {
    return Song(
      title: json['title'] as String,
      author: json['author'] as String,
      melody: json['melody'] as String,
      lyrics: json['lyrics'] as String,
      about: json['about'] as String,
    );
  }
}
