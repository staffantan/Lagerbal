#!/usr/bin/env python3
"""
Generate complete Dart code for all songs from songs_data.json
"""

import json

def escape_dart_string(text):
    """Escape special characters for Dart strings inside triple quotes."""
    # Only need to escape backslashes and handle single quotes properly
    text = text.replace('\\', '\\\\')
    # Don't escape single quotes - they're fine inside triple-quoted strings
    # But if the string ends with a single quote, we need to be careful
    return text

def song_to_dart(song):
    """Convert a song dictionary to Dart Song object code."""
    title = song['title'].replace("\\", "\\\\").replace("'", "\\'")
    melody = song['melody'].replace("\\", "\\\\").replace("'", "\\'")
    author = song['author'].replace("\\", "\\\\").replace("'", "\\'")
    
    # Handle about field - it might contain newlines
    about = song['about'].replace("\\", "\\\\")
    if '\n' in about or "'" in about:
        # Use triple quotes for multi-line about fields
        about_escaped = about.replace("'''", "\\'\\'\\'")
        if about.endswith("'"):
            about_escaped = about_escaped[:-1] + "\\'"
        about_str = f"'''{about_escaped}'''"
    else:
        about_str = f"'{about}'"
    
    # For lyrics, we need special handling
    lyrics = song['lyrics'].replace("\\", "\\\\")
    
    # Check if lyrics ends with single quote
    if lyrics.endswith("'"):
        # Need to escape it
        lyrics = lyrics[:-1] + "\\'"
    
    # Replace single quotes in the middle carefully
    # If there's a single quote followed by three quotes (end marker), escape it
    lyrics = lyrics.replace("'''", "\\'\\'\\'")
    
    dart_code = f"""      Song(
        title: '{title}',
        author: '{author}',
        melody: '{melody}',
        lyrics: '''{lyrics}''',
        about: {about_str},
      ),"""
    
    return dart_code

def generate_category_dart(category_name, songs):
    """Generate complete Dart code for a category."""
    dart_lines = []
    dart_lines.append(f"  Category(")
    dart_lines.append(f"    name: '{category_name}',")
    dart_lines.append(f"    songs: [")
    
    for i, song in enumerate(songs):
        try:
            song_dart = song_to_dart(song)
            dart_lines.append(song_dart)
        except Exception as e:
            print(f"Error converting song '{song.get('title', 'Unknown')}': {e}")
            dart_lines.append(f"      // Error: Could not convert '{song.get('title', 'Unknown')}'")
    
    dart_lines.append(f"    ],")
    dart_lines.append(f"  ),")
    
    return "\n".join(dart_lines)

def main():
    """Generate Dart code for all categories."""
    # Load the JSON data
    with open('songs_data.json', 'r', encoding='utf-8') as f:
        categories = json.load(f)
    
    # Generate Dart file header
    output_lines = []
    output_lines.append("import '../models/category.dart';")
    output_lines.append("import '../models/song.dart';")
    output_lines.append("")
    output_lines.append("final List<Category> sampleSongbook = [")
    
    # Generate each category
    for cat_name in ['Klassiskt', 'Nubbe', 'Öl', 'Vin', 'Punsch', 'Kräftor', 'Bakfylla', 'Nördigt', 'Odödliga', 'Ekivoka']:
        songs = categories.get(cat_name, [])
        if songs:
            print(f"Generating {cat_name}: {len(songs)} songs...")
            category_dart = generate_category_dart(cat_name, songs)
            output_lines.append(category_dart)
    
    output_lines.append("];")
    
    # Write to file
    full_dart = "\n".join(output_lines)
    with open('sample_songs_complete.dart', 'w', encoding='utf-8') as f:
        f.write(full_dart)
    
    print("\nComplete! Written to sample_songs_complete.dart")
    print(f"Total lines: {len(output_lines)}")
    
    # Print total song count
    total_songs = sum(len(categories.get(cat, [])) for cat in ['Klassiskt', 'Nubbe', 'Öl', 'Vin', 'Punsch', 'Kräftor', 'Bakfylla', 'Nördigt', 'Odödliga', 'Ekivoka'])
    print(f"Total songs: {total_songs}")

if __name__ == '__main__':
    main()
