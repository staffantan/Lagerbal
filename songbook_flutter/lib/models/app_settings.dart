class AppSettings {
  String serverUrl;
  bool autoDownload;
  bool showAdultSongs;
  bool showCustomSongs;

  AppSettings({
    this.serverUrl = '',
    this.autoDownload = false,
    this.showAdultSongs = false,
    this.showCustomSongs = true,
  });

  AppSettings copyWith({
    String? serverUrl,
    bool? autoDownload,
    bool? showAdultSongs,
    bool? showCustomSongs,
  }) {
    return AppSettings(
      serverUrl: serverUrl ?? this.serverUrl,
      autoDownload: autoDownload ?? this.autoDownload,
      showAdultSongs: showAdultSongs ?? this.showAdultSongs,
      showCustomSongs: showCustomSongs ?? this.showCustomSongs,
    );
  }

  // Convert AppSettings to JSON
  Map<String, dynamic> toJson() {
    return {
      'serverUrl': serverUrl,
      'autoDownload': autoDownload,
      'showAdultSongs': showAdultSongs,
      'showCustomSongs': showCustomSongs,
    };
  }

  // Create AppSettings from JSON
  factory AppSettings.fromJson(Map<String, dynamic> json) {
    return AppSettings(
      serverUrl: json['serverUrl'] as String? ?? '',
      autoDownload: json['autoDownload'] as bool? ?? false,
      showAdultSongs: json['showAdultSongs'] as bool? ?? false,
      showCustomSongs: json['showCustomSongs'] as bool? ?? true,
    );
  }
}
