import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:http/http.dart' as http;
import 'package:ota_update/ota_update.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'dart:convert';
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
  bool _isCheckingUpdate = false;

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

  Future<void> _checkForUpdates() async {
    setState(() {
      _isCheckingUpdate = true;
    });

    try {
      final response = await http.get(
        Uri.parse('https://api.github.com/repos/staffantan/Lagerbal/releases/latest'),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final latestVersion = data['tag_name']?.toString().replaceAll('v', '') ?? '';

        if (!mounted) return;

        // Compare versions
        if (latestVersion.isNotEmpty && _isNewerVersion(latestVersion, _version)) {
          await _showUpdateDialog(latestVersion, data);
        } else {
          _showNoUpdateDialog();
        }
      } else {
        if (!mounted) return;
        _showErrorDialog('Kunde inte kontrollera uppdateringar (${response.statusCode})');
      }
    } catch (e) {
      if (!mounted) return;
      _showErrorDialog('Fel vid kontroll av uppdateringar: $e');
    } finally {
      if (mounted) {
        setState(() {
          _isCheckingUpdate = false;
        });
      }
    }
  }

  bool _isNewerVersion(String latest, String current) {
    final latestParts = latest.split('.').map((e) => int.tryParse(e) ?? 0).toList();
    final currentParts = current.split('.').map((e) => int.tryParse(e) ?? 0).toList();

    for (var i = 0; i < 3; i++) {
      final latestPart = i < latestParts.length ? latestParts[i] : 0;
      final currentPart = i < currentParts.length ? currentParts[i] : 0;
      
      if (latestPart > currentPart) return true;
      if (latestPart < currentPart) return false;
    }
    return false;
  }

  Future<String?> _getDeviceAbi() async {
    try {
      final deviceInfo = DeviceInfoPlugin();
      final androidInfo = await deviceInfo.androidInfo;
      
      // Get the supported ABIs from the device
      final abis = androidInfo.supportedAbis;
      
      if (abis.isEmpty) {
        return null; // No ABI detected, will use universal APK
      }
      
      // Return the first (preferred) ABI
      // supportedAbis returns ABIs in order of preference
      final primaryAbi = abis.first;
      
      // Map Android ABI names to APK naming convention
      if (primaryAbi.contains('arm64')) {
        return 'arm64-v8a';
      } else if (primaryAbi.contains('armeabi-v7a') || primaryAbi.contains('armeabi')) {
        return 'armeabi-v7a';
      } else if (primaryAbi.contains('x86_64')) {
        return 'x86_64';
      } else if (primaryAbi.contains('x86')) {
        return 'x86';
      }
      
      // Unknown ABI, will use universal APK
      return null;
    } catch (e) {
      // If there's any error, use universal APK
      return null;
    }
  }

  Future<void> _showUpdateDialog(String version, Map<String, dynamic> releaseData) async {
    final assets = releaseData['assets'] as List? ?? [];
    
    // Determine device ABI
    final abi = await _getDeviceAbi();
    
    // Find APK file matching the device ABI, or fallback to universal APK
    String? apkDownloadUrl;
    String? universalApkUrl;
    
    for (var asset in assets) {
      final assetName = asset['name']?.toString() ?? '';
      if (assetName.endsWith('.apk')) {
        final url = asset['browser_download_url'];
        
        // Check for ABI-specific APK if ABI was detected
        if (abi != null && assetName.contains(abi)) {
          apkDownloadUrl = url;
          break; // Prefer exact ABI match
        }
        
        // Store universal APK as fallback (typically named app-release.apk)
        if (assetName.contains('release.apk') && !assetName.contains('arm64') && 
            !assetName.contains('armeabi') && !assetName.contains('x86')) {
          universalApkUrl = url;
        }
      }
    }
    
    // Use ABI-specific or fall back to universal
    apkDownloadUrl ??= universalApkUrl;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Uppdatering tillgänglig'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Ny version: v$version${abi != null ? ' ($abi)' : ''}'),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Avbryt'),
          ),
          FilledButton(
            onPressed: () {
              if (apkDownloadUrl != null) {
                Navigator.pop(context);
                _downloadAndInstallUpdate(apkDownloadUrl);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('APK-fil kunde inte hittas i releasen'),
                  ),
                );
              }
            },
            child: const Text('Uppdatera'),
          ),
        ],
      ),
    );
  }

  void _showNoUpdateDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Ingen uppdatering'),
        content: Text('Du har redan den senaste versionen (v$_version)'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  Future<void> _downloadAndInstallUpdate(String downloadUrl) async {
    try {
      OtaEvent? currentEvent;
      
      // Show progress dialog
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => StatefulBuilder(
          builder: (context, setDialogState) => AlertDialog(
            title: const Text('Laddar ner uppdatering'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircularProgressIndicator(),
                const SizedBox(height: 16),
                Text(
                  currentEvent != null
                      ? '${currentEvent!.status.name}: ${currentEvent!.value ?? "0"}%'
                      : 'Förbereder nedladdning...',
                ),
              ],
            ),
          ),
        ),
      );

      // Start download and installation
      OtaUpdate().execute(
        downloadUrl,
        destinationFilename: 'lagerbal_update.apk',
      ).listen(
        (OtaEvent event) {
          currentEvent = event;
          
          if (event.status == OtaStatus.INSTALLING) {
            // Close progress dialog when installation starts
            if (Navigator.canPop(context)) {
              Navigator.of(context).pop();
            }
          } else if (event.status == OtaStatus.ALREADY_RUNNING_ERROR) {
            if (Navigator.canPop(context)) {
              Navigator.of(context).pop();
            }
            _showErrorDialog('En uppdatering pågår redan');
          } else if (event.status == OtaStatus.PERMISSION_NOT_GRANTED_ERROR) {
            if (Navigator.canPop(context)) {
              Navigator.of(context).pop();
            }
            _showErrorDialog('Behörighet att installera appar krävs');
          }
        },
        onError: (error) {
          if (Navigator.canPop(context)) {
            Navigator.of(context).pop();
          }
          _showErrorDialog('Fel vid nedladdning: $error');
        },
      );
    } catch (e) {
      if (Navigator.canPop(context)) {
        Navigator.of(context).pop();
      }
      _showErrorDialog('Fel vid uppdatering: $e');
    }
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Fel'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
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
          const SizedBox(height: 8),

          // Check for Updates Button
          Card(
            child: ListTile(
              leading: const Icon(Icons.system_update),
              title: const Text('Sök efter uppdateringar'),
              subtitle: const Text('Kontrollera om en ny version finns tillgänglig'),
              trailing: _isCheckingUpdate
                  ? const SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Icon(Icons.arrow_forward_ios),
              onTap: _isCheckingUpdate ? null : _checkForUpdates,
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
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
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
