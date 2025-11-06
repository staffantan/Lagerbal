import 'dart:async';
import 'dart:convert';
import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/sample_songs.dart';
import '../models/app_settings.dart';
import '../models/category.dart';
import '../models/song.dart';
import 'add_song_screen.dart';
import 'settings_screen.dart';
import 'song_detail_screen.dart';

class SongListScreen extends StatefulWidget {
  final AppSettings settings;
  final Function(AppSettings) onSettingsChanged;

  const SongListScreen({
    super.key,
    required this.settings,
    required this.onSettingsChanged,
  });

  @override
  State<SongListScreen> createState() => _SongListScreenState();
}

class _SongListScreenState extends State<SongListScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';
  final List<Song> _customSongs = [];
  static const String _customSongsKey = 'custom_songs';
  late AppLinks _appLinks;
  StreamSubscription<Uri>? _linkSubscription;

  @override
  void initState() {
    super.initState();
    _loadCustomSongs();
    _initDeepLinks();
  }

  Future<void> _initDeepLinks() async {
    _appLinks = AppLinks();

    // Handle links when app is already started
    _linkSubscription = _appLinks.uriLinkStream.listen((uri) {
      _handleDeepLink(uri);
    });

    // Check if app was started with a link
    try {
      final uri = await _appLinks.getInitialLink();
      if (uri != null) {
        _handleDeepLink(uri);
      }
    } catch (e) {
      print('Error getting initial link: $e');
    }
  }

  void _handleDeepLink(Uri uri) {
    // Handle both old sangbok:// and new http://www.ahlvik.se/sangbok/ formats
    String? songData;
    
    if (uri.scheme == 'sangbok') {
      songData = uri.queryParameters['sang'];
    } else if (uri.host == 'www.ahlvik.se' && uri.path == '/sangbok/') {
      songData = uri.queryParameters['data'];
    }
    
    if (songData != null) {
      try {
        // Decode base64 to JSON
        final jsonString = utf8.decode(base64Decode(songData));
        final songJson = jsonDecode(jsonString) as Map<String, dynamic>;
        final song = Song.fromJson(songJson);

        // Check if song already exists
        final exists = _customSongs.any((s) => 
          s.title == song.title && s.lyrics == song.lyrics
        );

        if (!exists) {
          setState(() {
            _customSongs.add(song);
          });
          _saveCustomSongs();

          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Added "${song.title}" to Egna visor'),
                duration: const Duration(seconds: 3),
                action: SnackBarAction(
                  label: 'View',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SongDetailScreen(
                          song: song,
                          isCustomSong: true,
                          onDelete: () => _deleteCustomSong(song),
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          }
        } else {
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Song "${song.title}" already exists'),
                duration: const Duration(seconds: 2),
              ),
            );
          }
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Error importing song: $e'),
              duration: const Duration(seconds: 3),
            ),
          );
        }
      }
    }
  }

  @override
  void didUpdateWidget(SongListScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Trigger rebuild when settings change
    if (oldWidget.settings.showAdultSongs != widget.settings.showAdultSongs ||
        oldWidget.settings.showCustomSongs != widget.settings.showCustomSongs) {
      setState(() {
        // Force rebuild with new settings
      });
    }
  }

  @override
  void dispose() {
    _linkSubscription?.cancel();
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _loadCustomSongs() async {
    final prefs = await SharedPreferences.getInstance();
    final songsJson = prefs.getString(_customSongsKey);
    
    if (songsJson != null) {
      final List<dynamic> songsList = jsonDecode(songsJson);
      setState(() {
        _customSongs.clear();
        _customSongs.addAll(
          songsList.map((json) => Song.fromJson(json as Map<String, dynamic>)),
        );
      });
    }
  }

  Future<void> _saveCustomSongs() async {
    final prefs = await SharedPreferences.getInstance();
    final songsJson = jsonEncode(
      _customSongs.map((song) => song.toJson()).toList(),
    );
    await prefs.setString(_customSongsKey, songsJson);
  }

  void _addCustomSong() async {
    final newSong = await Navigator.push<Song>(
      context,
      MaterialPageRoute(
        builder: (context) => const AddSongScreen(),
      ),
    );
    
    if (newSong != null) {
      setState(() {
        _customSongs.add(newSong);
      });
      await _saveCustomSongs();
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Added "${newSong.title}" to Egna visor'),
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }

  void _deleteCustomSong(Song song) {
    setState(() {
      _customSongs.remove(song);
    });
    _saveCustomSongs();
    
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Deleted "${song.title}"'),
          duration: const Duration(seconds: 2),
          action: SnackBarAction(
            label: 'Undo',
            onPressed: () {
              setState(() {
                _customSongs.add(song);
              });
              _saveCustomSongs();
            },
          ),
        ),
      );
    }
  }

  List<Map<String, dynamic>> _getFilteredSongs() {
    // Start with all sample categories
    final categoriesToShow = sampleSongbook.where((category) {
      // Filter out Ekivoka if showAdultSongs is false
      if (!widget.settings.showAdultSongs && category.name == 'Ekivoka') {
        return false;
      }
      return true;
    }).toList();

    // Add custom songs category at the beginning if there are custom songs and setting is enabled
    if (_customSongs.isNotEmpty && widget.settings.showCustomSongs) {
      categoriesToShow.insert(0, Category(
        name: 'Egna visor',
        songs: _customSongs,
      ));
    }

    if (_searchQuery.isEmpty) {
      // Return all songs grouped by category
      return categoriesToShow.map((category) {
        return {
          'category': category,
          'songs': category.songs,
        };
      }).toList();
    }

    // Filter songs across all categories
    final query = _searchQuery.toLowerCase();
    final filteredResults = <Map<String, dynamic>>[];

    for (final category in categoriesToShow) {
      final matchingSongs = category.songs.where((song) {
        return song.title.toLowerCase().contains(query) ||
            song.lyrics.toLowerCase().contains(query) ||
            song.author.toLowerCase().contains(query) ||
            song.melody.toLowerCase().contains(query);
      }).toList();

      if (matchingSongs.isNotEmpty) {
        filteredResults.add({
          'category': category,
          'songs': matchingSongs,
        });
      }
    }

    return filteredResults;
  }

  @override
  Widget build(BuildContext context) {
    final filteredSongs = _getFilteredSongs();

    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          'logo.png', 
          height: 72
        ),
        title: const Text('DISK KMs sångbok'),
        titleSpacing: 0,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Settings',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsScreen(
                    settings: widget.settings,
                    onSettingsChanged: widget.onSettingsChanged,
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search songs by title, lyrics, author, or melody...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _searchQuery.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          setState(() {
                            _searchController.clear();
                            _searchQuery = '';
                          });
                        },
                      )
                    : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                filled: true,
                fillColor: Theme.of(context).colorScheme.surfaceContainerHighest,
              ),
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
            ),
          ),
          Expanded(
            child: filteredSongs.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search_off,
                          size: 64,
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'No songs found',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Try a different search term',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: Theme.of(context).colorScheme.onSurfaceVariant,
                              ),
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    itemCount: filteredSongs.length,
                    itemBuilder: (context, index) {
                      final result = filteredSongs[index];
                      final category = result['category'] as Category;
                      final songs = result['songs'] as List<Song>;
                      return _CategorySection(
                        category: category,
                        songs: songs,
                        showCount: _searchQuery.isNotEmpty,
                        onDeleteSong: category.name == 'Egna visor' ? _deleteCustomSong : null,
                      );
                    },
                  ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addCustomSong,
        tooltip: 'Add Custom Song',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _CategorySection extends StatelessWidget {
  final Category category;
  final List<Song> songs;
  final bool showCount;
  final Function(Song)? onDeleteSong;

  const _CategorySection({
    required this.category,
    required this.songs,
    this.showCount = false,
    this.onDeleteSong,
  });

  @override
  Widget build(BuildContext context) {
    final bool isCustomCategory = category.name == 'Egna visor';
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
          child: Text(
            showCount
                ? '${category.name} (${songs.length} ${songs.length == 1 ? 'song' : 'songs'})'
                : category.name,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
        ),
        ...songs.map((song) => _SongListTile(
              song: song,
              isCustomSong: isCustomCategory,
              onDelete: isCustomCategory && onDeleteSong != null
                  ? () => onDeleteSong!(song)
                  : null,
            )),
        const Divider(height: 1),
      ],
    );
  }
}

class _SongListTile extends StatelessWidget {
  final Song song;
  final bool isCustomSong;
  final VoidCallback? onDelete;

  const _SongListTile({
    required this.song,
    this.isCustomSong = false,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(song.title),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SongDetailScreen(
              song: song,
              isCustomSong: isCustomSong,
              onDelete: onDelete,
            ),
          ),
        );
      },
    );
  }
}
