# Lägerbål 🔥

A Flutter songbook application for Swedish scout campfire songs and other popular campfire songs.

## Features

- 📚 **50+ Songs** - Browse songs across multiple categories (Scoutvisor and Lägerbålsvisor)
- ⭐ **Favorites** - Mark your favorite songs for quick access
- ➕ **Custom Songs** - Add your own songs with title, author, melody, lyrics, and additional information
- 🌓 **Dark Mode** - System-aware dark/light themes with manual override
- 🔤 **Adjustable Font Size** - Scale lyrics text from 80% to 150% for better readability
- 📱 **Responsive Design** - SafeArea implementation prevents content from being hidden by system UI
- 🔗 **Deep Linking** - Support for `sangbok://` and `http://www.ahlvik.se/sangbok/` URL schemes
- 💾 **Local Storage** - All favorites and custom songs are saved locally using SharedPreferences
- 🎨 **Swedish Scout Colors** - Blue (#003D7A) and Yellow (#FECB00) theme matching Swedish Scouts
- 🖨️ **PDF Export** - Export selected songs into a printable pdf
- 🎸 **Guitar tabs** - Show guitar tabs for select songs

## Download

[![Latest Release](https://img.shields.io/github/v/release/staffantan/Lagerbal)](https://github.com/staffantan/Lagerbal/releases/latest)

Download the latest version from the [Releases page](https://github.com/staffantan/Lagerbal/releases/latest).

## Getting Started

### Prerequisites

- Flutter SDK 3.9.2 or higher
- Dart SDK
- Android Studio / VS Code with Flutter extensions
- For Android: Android SDK
- For Windows: Visual Studio with C++ tools

### Installation

1. Clone the repository:
```bash
git clone https://github.com/staffantan/Lagerbal.git
cd songbook_flutter
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run              # Default device
flutter run -d windows   # Windows desktop
flutter run -d chrome    # Web browser
flutter run -d android   # Android device/emulator
```

### Building

#### Android APK
```bash
flutter build apk
```
The APK will be located at `build/app/outputs/flutter-apk/app-release.apk`

#### Windows Desktop
```bash
flutter build windows
```

#### Web
```bash
flutter build web
```

## Project Structure

```
lib/
├── main.dart                      # App entry point with theme configuration
├── models/
│   ├── song.dart                  # Song data model
│   ├── category.dart              # Category data model
│   └── app_settings.dart          # Settings model (theme, font size, etc.)
├── screens/
│   ├── song_list_screen.dart      # Main screen with category browsing
│   ├── song_detail_screen.dart    # Song display with lyrics
│   ├── add_song_screen.dart       # Create custom songs
│   └── settings_screen.dart       # App settings
└── data/
    └── sample_songs.dart          # Bundled song data
```

## Configuration

### Customizing the App

#### Change App Name
Edit the following files:
- `android/app/src/main/AndroidManifest.xml` - `android:label`
- `ios/Runner/Info.plist` - `CFBundleDisplayName`
- `lib/main.dart` - `title` property in `MaterialApp`

#### Change App Icon
1. Replace `icon.png` in the root directory with your icon (1024x1024 recommended)
2. Run: `flutter pub run flutter_launcher_icons`
3. Rebuild the app

#### Update Color Scheme
Edit `lib/main.dart` and modify the `ColorScheme` in both light and dark themes.

## Features in Detail

### Favorites System
- Tap the star icon on any song to add it to favorites
- Favorites are displayed in a special "Favoriter" category at the top
- Favorites persist across app restarts

### Custom Songs
- Add your own songs via the "+" button
- Include title, author, melody, lyrics, and additional information
- Share custom songs via generated links
- Delete custom songs you've created

### Theme System
- **System**: Automatically follows device theme settings
- **Light**: Always use light mode
- **Dark**: Always use dark mode
- Toggle in Settings screen

### Font Size Adjustment
- Adjust lyrics text size from 80% to 150%
- Slider in Settings screen
- Changes apply immediately to all songs

## Deep Linking

The app supports two URL schemes for opening songs:

1. **Custom scheme**: `sangbok://song?data=<base64_encoded_song_json>`
2. **Web scheme**: `http://www.ahlvik.se/sangbok/?data=<base64_encoded_song_json>`

Songs shared via the share feature generate these links automatically.

## PDF Export with Song Selection: 
 - Added comprehensive PDF export feature accessible from Settings
 - Select individual songs from all categories to include in export
 - Reorderable song list with drag-and-drop functionality
 - Live preview before saving or sharing
 - Cover page with app icon, title "Lägerbålssånger", song count, and date
 - Automatic table of contents with song numbers and authors

## Dependencies

- **flutter**: SDK
- **cupertino_icons**: ^1.0.8 - iOS-style icons
- **shared_preferences**: ^2.5.3 - Local data persistence
- **app_links**: ^6.3.3 - Deep linking support
- **flutter_launcher_icons**: ^0.13.1 - Icon generation (dev)
- **pdf**: ^3.11.1 - PDF document generation
- **printing**: ^5.13.4 - PDF preview, sharing, and printing
- **path_provider**: ^2.1.5 - File system access for saving PDFs
- **google_fonts**: ^6.1.0 - Roboto fonts for PDF text rendering

## Development

### Adding New Songs

Edit `lib/data/sample_songs.dart`:

```dart
Song(
  title: 'Song Title',
  author: 'Author Name',
  melody: 'Melody/Tune',
  lyrics: '''Song lyrics go here
Multi-line support''',
  about: 'Additional information about the song',
),
```

### Running Tests

```bash
flutter test
```

### Code Analysis

```bash
flutter analyze
```

### Code Formatting

```bash
flutter format .
```

## Known Issues

- iOS platform not fully configured (icons disabled in launcher_icons config)
- Web platform may have limited functionality

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

[Add license information here]

## Credits

- App developed using Flutter
- Swedish Scout color scheme
- Songs collected from Swedish scouting tradition

## Contact

- Repository: [https://github.com/staffantan/Lagerbal](https://github.com/staffantan/Lagerbal)
- Issues: [https://github.com/staffantan/Lagerbal/issues](https://github.com/staffantan/Lagerbal/issues)

## Version History

### 1.0.0
- Initial release
- 50+ campfire songs
- Favorites system
- Custom song creation
- Dark/light theme support
- Adjustable font size
- Deep linking support

### 1.1.1
- Added guitar tabs
- Added export to PDF

