class AppSettings {
  bool showCustomSongs;
  String themeMode; // 'system', 'light', or 'dark'
  double fontSize; // Font size multiplier (0.8 to 1.5)
  bool showGuitarTabs; // Show guitar tabs by default

  AppSettings({
    this.showCustomSongs = true,
    this.themeMode = 'system',
    this.fontSize = 1.0,
    this.showGuitarTabs = false,
  });

  AppSettings copyWith({
    bool? showCustomSongs,
    String? themeMode,
    double? fontSize,
    bool? showGuitarTabs,
  }) {
    return AppSettings(
      showCustomSongs: showCustomSongs ?? this.showCustomSongs,
      themeMode: themeMode ?? this.themeMode,
      fontSize: fontSize ?? this.fontSize,
      showGuitarTabs: showGuitarTabs ?? this.showGuitarTabs,
    );
  }

  // Convert AppSettings to JSON
  Map<String, dynamic> toJson() {
    return {
      'showCustomSongs': showCustomSongs,
      'themeMode': themeMode,
      'fontSize': fontSize,
      'showGuitarTabs': showGuitarTabs,
    };
  }

  // Create AppSettings from JSON
  factory AppSettings.fromJson(Map<String, dynamic> json) {
    // Handle themeMode with extra safety
    String themeModeValue = 'system';
    if (json.containsKey('themeMode') && json['themeMode'] != null) {
      themeModeValue = json['themeMode'] as String;
    }
    
    // Handle fontSize with extra safety
    double fontSizeValue = 1.0;
    if (json.containsKey('fontSize') && json['fontSize'] != null) {
      fontSizeValue = (json['fontSize'] as num).toDouble();
    }
    
    return AppSettings(
      showCustomSongs: json['showCustomSongs'] as bool? ?? true,
      themeMode: themeModeValue,
      fontSize: fontSizeValue,
      showGuitarTabs: json['showGuitarTabs'] as bool? ?? false,
    );
  }
}
