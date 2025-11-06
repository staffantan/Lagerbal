import 'package:flutter/material.dart';
import '../models/app_settings.dart';

class SettingsScreen extends StatefulWidget {
  final AppSettings settings;
  final Function(AppSettings) onSettingsChanged;

  const SettingsScreen({
    super.key,
    required this.settings,
    required this.onSettingsChanged,
  });

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
                      segments: const [
                        ButtonSegment<String>(
                          value: 'system',
                          label: Text('System'),
                          icon: Icon(Icons.brightness_auto),
                        ),
                        ButtonSegment<String>(
                          value: 'light',
                          label: Text('Ljust'),
                          icon: Icon(Icons.light_mode),
                        ),
                        ButtonSegment<String>(
                          value: 'dark',
                          label: Text('Mörkt'),
                          icon: Icon(Icons.dark_mode),
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

          // Show Adult Songs
          Card(
            child: SwitchListTile(
              title: const Text('Visa ekivoka låtar'),
              subtitle: const Text('Visa låtar i ekivoka kategorin'),
              secondary: const Icon(Icons.warning_amber),
              value: widget.settings.showAdultSongs,
              onChanged: (value) {
                final updatedSettings = widget.settings.copyWith(
                  showAdultSongs: value,
                );
                widget.onSettingsChanged(updatedSettings);
              },
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
        ],
      ),
      ),
    );
  }
}
