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
