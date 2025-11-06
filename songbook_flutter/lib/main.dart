import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'models/app_settings.dart';
import 'screens/song_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AppSettings _settings = AppSettings();
  static const String _settingsKey = 'app_settings';
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    final settingsJson = prefs.getString(_settingsKey);
    
    if (settingsJson != null) {
      final settingsMap = jsonDecode(settingsJson) as Map<String, dynamic>;
      setState(() {
        _settings = AppSettings.fromJson(settingsMap);
        _isLoading = false;
      });
    } else {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _saveSettings(AppSettings newSettings) async {
    final prefs = await SharedPreferences.getInstance();
    final settingsJson = jsonEncode(newSettings.toJson());
    await prefs.setString(_settingsKey, settingsJson);
  }

  void _updateSettings(AppSettings newSettings) {
    setState(() {
      _settings = newSettings;
    });
    _saveSettings(newSettings);
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const MaterialApp(
        home: Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DISK KMs sångbok',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFD4AF37), // Gold color
          secondary: const Color(0xFFD4AF37), // Gold
          primary: const Color(0xFF757575), // Grey
          surface: const Color(0xFFF5F5F5), // Light grey
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: SongListScreen(
        settings: _settings,
        onSettingsChanged: _updateSettings,
      ),
    );
  }
}
