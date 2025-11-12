# Changelog

All notable changes to Lägerbål will be documented in this file.

## [1.1.2] - 2025-11-12

### Added
- **Automatic Update Checker**: New feature in settings to check for updates from GitHub releases
  - Checks latest release from GitHub repository
  - Compares current version with latest available version
  - Shows release notes in update dialog
  - Direct download and installation of APK files using OTA update
  - Progress indicator during download
  - Handles permissions and errors gracefully

- **App Version Display**: Version number now shown at bottom of settings screen

- **Enhanced PDF Export**:
  - Paginated table of contents (no more cut-off lists)
  - Continuation pages for long song lists (up to 30 songs per page)
  - Title only shown on first page of table of contents
  - Improved layout for better readability

- **Share Functionality**: Native Android share dialog for sharing songs
  - Share button now available for all songs (not just custom songs)
  - Uses Android's native share interface
  - Share songs via any installed app (WhatsApp, SMS, Email, etc.)
  - Link is also copied to clipboard as backup

### Changed
- **Color Scheme**: Updated to scout blue theme (#003660)
  - Primary color: Scout blue (#003660)
  - Secondary color: Scout yellow (#FECB00)
  - Dark mode uses lighter scout blue (#4A90C8)
  - Consistent theme across all screens

- **Android Permissions**: Added required permissions for update functionality
  - INTERNET permission for downloading updates
  - WRITE_EXTERNAL_STORAGE for saving APK files
  - REQUEST_INSTALL_PACKAGES for installing updates

### Technical
- Updated to use `ota_update` package (v6.0.0) for automatic updates
- Added `share_plus` package (v10.1.4) for native sharing
- Added `package_info_plus` (v8.3.1) for version information
- Added `http` package (v1.5.0) for API communication
- Enabled core library desugaring (v2.1.4) for Java 8+ features
- Improved build configuration for Android

### Fixed
- Fixed icon display issue on Android PDF export (switched to asset bundle loading)
- Fixed table of contents pagination to prevent content cut-off
- Resolved Kotlin incremental compilation cache issues

## [1.1.1] - Previous Release

### Features from previous versions
- PDF export with song selection and reordering
- Custom song management (add, edit, delete)
- Song favorites
- Deep linking support for song sharing
- Dark mode support
- Font size adjustment
- Search functionality
- Guitar chord display

---

## How to Update

1. Open the app and go to Settings
2. Tap "Sök efter uppdateringar"
3. If an update is available, tap "Uppdatera"
4. Wait for download to complete
5. Tap "Install" when prompted by Android
6. The app will restart with the new version

For manual installation, download the APK from [GitHub Releases](https://github.com/staffantan/Lagerbal/releases/latest).
