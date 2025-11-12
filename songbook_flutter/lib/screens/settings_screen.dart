import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import '../models/app_settings.dart';
import '../models/category.dart';
import '../models/song.dart';
import 'pdf_export_screen.dart';

class SettingsScreen extends StatefulWidget {
  final AppSettings settings;
  final Function(AppSettings) onSettingsChanged;
  final List<Category> songbook;
  final List<Song> customSongs;

  const SettingsScreen({
    super.key,
    required this.settings,
    required this.onSettingsChanged,
    required this.songbook,
    this.customSongs = const [],
  });

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String _version = '';
  String _buildNumber = '';

  @override
  void initState() {
    super.initState();
    _loadPackageInfo();
  }

  Future<void> _loadPackageInfo() async {
    final packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      _version = packageInfo.version;
      _buildNumber = packageInfo.buildNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inställningar'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
          // Theme Mode Setting
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: const Icon(Icons.palette),
                    title: const Text('Tema'),
                    subtitle: const Text('Välj ljust, mörkt eller systemtema'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SegmentedButton<String>(
                      showSelectedIcon: false,
                      segments: const [
                        ButtonSegment<String>(
                          value: 'system',
                          icon: Icon(Icons.brightness_auto),
                          tooltip: 'System',
                        ),
                        ButtonSegment<String>(
                          value: 'light',
                          icon: Icon(Icons.light_mode),
                          tooltip: 'Ljust',
                        ),
                        ButtonSegment<String>(
                          value: 'dark',
                          icon: Icon(Icons.dark_mode),
                          tooltip: 'Mörkt',
                        ),
                      ],
                      selected: {widget.settings.themeMode},
                      onSelectionChanged: (Set<String> newSelection) {
                        final updatedSettings = widget.settings.copyWith(
                          themeMode: newSelection.first,
                        );
                        widget.onSettingsChanged(updatedSettings);
                      },
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),

          // Font Size Setting
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: const Icon(Icons.text_fields),
                    title: const Text('Textstorlek'),
                    subtitle: Text('${(widget.settings.fontSize * 100).round()}%'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        const Icon(Icons.text_decrease, size: 20),
                        Expanded(
                          child: Slider(
                            value: widget.settings.fontSize,
                            min: 0.8,
                            max: 1.5,
                            divisions: 14,
                            label: '${(widget.settings.fontSize * 100).round()}%',
                            onChanged: (value) {
                              final updatedSettings = widget.settings.copyWith(
                                fontSize: value,
                              );
                              widget.onSettingsChanged(updatedSettings);
                            },
                          ),
                        ),
                        const Icon(Icons.text_increase, size: 20),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),

          // Show Custom Songs
          Card(
            child: SwitchListTile(
              title: const Text('Visa egna låtar'),
              subtitle: const Text('Visa användarskapade egna låtar'),
              secondary: const Icon(Icons.edit_note),
              value: widget.settings.showCustomSongs,
              onChanged: (value) {
                final updatedSettings = widget.settings.copyWith(
                  showCustomSongs: value,
                );
                widget.onSettingsChanged(updatedSettings);
              },
            ),
          ),
          const SizedBox(height: 8),

          // PDF Export Button
          Card(
            child: ListTile(
              leading: const Icon(Icons.picture_as_pdf),
              title: const Text('Exportera till PDF'),
              subtitle: const Text('Skapa en PDF med valda sånger'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PdfExportScreen(
                      songbook: widget.songbook,
                      customSongs: widget.customSongs,
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 32),
          
          // Version information at the bottom
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Version $_version${_buildNumber.isNotEmpty ? '+$_buildNumber' : ''}',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
                ),
              ),
            ),
          ),
        ],
      ),
      ),
    );
  }
}
