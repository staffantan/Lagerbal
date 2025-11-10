import 'song.dart';

// Base class for items in the PDF export list
abstract class PdfExportItem {
  String get displayTitle;
  String get uniqueId;
}

// Song item wrapper
class SongItem extends PdfExportItem {
  final Song song;
  
  SongItem(this.song);
  
  @override
  String get displayTitle => song.title;
  
  @override
  String get uniqueId => 'song_${song.title}_${song.author}';
}

// Spacer item
class SpacerItem extends PdfExportItem {
  final String id;
  
  SpacerItem(this.id);
  
  @override
  String get displayTitle => 'Mellanrum';
  
  @override
  String get uniqueId => 'spacer_$id';
}
