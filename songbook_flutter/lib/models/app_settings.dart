class AppSettings {
  String serverUrl;
  bool autoDownload;
  bool showAdultSongs;
  bool showCustomSongs;
  String themeMode; // 'system', 'light', or 'dark'

  AppSettings({
    this.serverUrl = '',
    this.autoDownload = false,
    this.showAdultSongs = false,
    this.showCustomSongs = true,
    this.themeMode = 'system',
  });

  AppSettings copyWith({
    String? serverUrl,
    bool? autoDownload,
    bool? showAdultSongs,
    bool? showCustomSongs,
    String? themeMode,
  }) {
    return AppSettings(
      serverUrl: serverUrl ?? this.serverUrl,
      autoDownload: autoDownload ?? this.autoDownload,
      showAdultSongs: showAdultSongs ?? this.showAdultSongs,
      showCustomSongs: showCustomSongs ?? this.showCustomSongs,
      themeMode: themeMode ?? this.themeMode,
    );
  }

  // Convert AppSettings to JSON
  Map<String, dynamic> toJson() {
    return {
      'serverUrl': serverUrl,
      'autoDownload': autoDownload,
      'showAdultSongs': showAdultSongs,
      'showCustomSongs': showCustomSongs,
      'themeMode': themeMode,
    };
  }

  // Create AppSettings from JSON
  factory AppSettings.fromJson(Map<String, dynamic> json) {
    // Handle themeMode with extra safety
    String themeModeValue = 'system';
    if (json.containsKey('themeMode') && json['themeMode'] != null) {
      themeModeValue = json['themeMode'] as String;
    }
    
    return AppSettings(
      serverUrl: json['serverUrl'] as String? ?? '',
      autoDownload: json['autoDownload'] as bool? ?? false,
      showAdultSongs: json['showAdultSongs'] as bool? ?? false,
      showCustomSongs: json['showCustomSongs'] as bool? ?? true,
      themeMode: themeModeValue,
    );
  }
}
