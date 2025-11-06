# Copilot Instructions for Songbook Flutter

## Project Overview
This is a Flutter mobile application (Songbook) currently in early development stage. The project uses Flutter SDK 3.9.2+ and follows standard Flutter project structure with platform-specific code for Android, iOS, Linux, macOS, Windows, and Web.

## Architecture & Structure

### Current State
- **Main Entry Point**: `lib/main.dart` - Single-file app that shows a list of songs that you can open and get the lyrics for that song.
- **Package Name**: `songbook_flutter` (`com.example.songbook_flutter` on Android)
- **Build System**: Kotlin-based Gradle (`.gradle.kts`) for Android
- **Linting**: Uses `package:flutter_lints/flutter.yaml` for code quality

### Key Directories
- `lib/` - Dart application code (currently only `main.dart`)
- `test/` - Widget and unit tests
- `android/`, `ios/`, `linux/`, `macos/`, `windows/`, `web/` - Platform-specific builds
- `build/` - Generated build artifacts (not committed)

## Development Workflows

### Running the App
```powershell
flutter run                    # Debug mode with hot reload
flutter run --release          # Release mode
flutter run -d chrome          # Web target
flutter run -d windows         # Windows desktop
```

### Testing
```powershell
flutter test                   # Run all tests
flutter test test/widget_test.dart  # Run specific test file
```

### Building
```powershell
flutter build apk              # Android APK
flutter build appbundle        # Android App Bundle
flutter build ios              # iOS (macOS only)
flutter build windows          # Windows executable
```

### Code Quality
```powershell
flutter analyze                # Static analysis
flutter format .               # Format all Dart files
```

## Project-Specific Conventions

### Code Style
- **Linting**: Follows Flutter recommended lints from `flutter_lints` package
- **Formatting**: Standard Dart formatter with trailing commas for better auto-formatting
- **State Management**: Currently using basic `StatefulWidget` with `setState()`
- **Widget Structure**: Const constructors used throughout for performance

### Important Details
- The counter in `main.dart` **decrements** (line 64: `_counter--`) instead of incrementing - this is intentional
- Application ID needs updating: `com.example.songbook_flutter` should be changed to production namespace
- No custom assets, fonts, or external packages beyond `cupertino_icons` currently

### Testing Patterns
- Widget tests use `WidgetTester` from `flutter_test` package
- Test file structure mirrors `lib/` directory
- Import format: `import 'package:songbook_flutter/main.dart';`

## Platform-Specific Notes

### Android
- **Build Tool**: Gradle with Kotlin DSL (`.gradle.kts`)
- **Java Version**: Java 11 (source & target compatibility)
- **Kotlin**: JVM target 11
- **Min SDK**: Uses Flutter defaults (check `flutter.minSdkVersion`)
- **Custom Build Dir**: Uses `../../build` for all outputs

### iOS
- AppDelegate in Swift
- Standard Xcode project structure

### Windows/Linux/macOS
- CMake-based build systems
- Generated plugin registrants in C++ (Windows/Linux) or Swift (macOS)

## Common Tasks for AI Agents

### Adding New Screens
1. Create widget file in `lib/screens/`
2. Import in `main.dart` and update `MaterialApp.routes` or use navigator
3. Add corresponding test in `test/screens/`

### Adding Dependencies
1. Update `pubspec.yaml` dependencies section
2. Run `flutter pub get`
3. Import package in Dart files as `package:package_name/...`

### State Management (Future)
Currently using `setState()`. If upgrading to Provider/Riverpod/Bloc:
- Update `pubspec.yaml` first
- Create separate directory: `lib/providers/`, `lib/blocs/`, etc.
- Update test structure accordingly

### Assets
To add images, fonts, or other assets:
1. Uncomment and configure `assets:` or `fonts:` section in `pubspec.yaml`
2. Place files in project root (e.g., `assets/images/`, `fonts/`)
3. Reference in code via `Image.asset()` or theme configuration

## Known Issues & TODOs
- TODO in `android/app/build.gradle.kts`: Update `applicationId` from example namespace
- TODO in `android/app/build.gradle.kts`: Add proper release signing configuration
- Widget test expects counter to increment but code decrements (line mismatch)
