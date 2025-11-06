#!/usr/bin/env python3
"""
Parse Songs.cs and convert all songs to Dart format for Flutter app.
"""

import re
import json

def escape_dart_string(text):
    """Escape special characters for Dart multi-line strings."""
    # Replace backslash first to avoid double escaping
    text = text.replace('\\', '\\\\')
    # Escape single quotes that would break the string
    # For strings ending with single quotes before ''', we need special handling
    text = text.replace("'", "\\'")
    return text

def parse_song(song_text):
    """Parse a C# Song constructor and extract fields, handling string concatenation."""
    
    # First, handle string concatenation - join lines that end with " +
    lines = song_text.split('\n')
    processed_lines = []
    current_line = ""
    
    for line in lines:
        stripped = line.strip()
        # Check if this line continues (ends with " + or "\n" +)
        if re.search(r'"(?:\\n)?"\s*\+\s*$', stripped):
            # Remove the closing quote, \n, and + for concatenation
            stripped = re.sub(r'"(?:\\n)?"\s*\+\s*$', '', stripped)
            current_line += stripped
        else:
            current_line += stripped
            if current_line:
                processed_lines.append(current_line)
            current_line = ""
    
    if current_line:
        processed_lines.append(current_line)
    
    # Join all processed lines
    song_text = '\n'.join(processed_lines)
    
    # Extract fields more carefully
    fields = []
    current_field = ""
    in_field = False
    quote_char = None
    i = 0
    
    while i < len(song_text):
        char = song_text[i]
        
        if not in_field:
            if char in ['"']:
                in_field = True
                quote_char = char
                current_field = ""
        else:
            if char == '\\' and i + 1 < len(song_text):
                # Handle escape sequences
                next_char = song_text[i + 1]
                if next_char == 'n':
                    current_field += '\n'
                    i += 1
                elif next_char == 't':
                    current_field += '\t'
                    i += 1
                elif next_char == 'r':
                    current_field += '\r'
                    i += 1
                elif next_char == '\\':
                    current_field += '\\'
                    i += 1
                elif next_char == '"':
                    current_field += '"'
                    i += 1
                else:
                    current_field += char
            elif char == quote_char and (i + 1 >= len(song_text) or song_text[i + 1] != quote_char):
                # End of field (but not escaped quote)
                fields.append(current_field)
                current_field = ""
                in_field = False
                quote_char = None
            else:
                current_field += char
        
        i += 1
    
    # If we're still in a field at the end, add it
    if in_field and current_field:
        fields.append(current_field)
    
    if len(fields) >= 5:
        return {
            'title': fields[0],
            'melody': fields[1],
            'author': fields[2],
            'lyrics': fields[3],
            'about': fields[4]
        }
    
    return None

def song_to_dart(song):
    """Convert a song dictionary to Dart Song object code."""
    # For Dart, we'll use triple single quotes for multi-line strings
    # Need to escape single quotes in the content
    
    title = song['title'].replace("'", "\\'")
    melody = song['melody'].replace("'", "\\'")
    author = song['author'].replace("'", "\\'")
    about = song['about'].replace("'", "\\'")
    
    # Lyrics need special handling - keep newlines
    lyrics = song['lyrics']
    # Replace single quotes carefully
    # If lyrics ends with single quote, it needs escaping
    lyrics = lyrics.replace("'", "\\'")
    
    dart_code = f"""      Song(
        title: '{title}',
        author: '{author}',
        melody: '{melody}',
        lyrics: '''{lyrics}''',
        about: '{about}',
      ),"""
    
    return dart_code

def parse_songs_cs(filepath):
    """Parse the entire Songs.cs file and organize by category."""
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Find all category sections
    categories = {
        'Klassiskt': [],
        'Nubbe': [],
        'Öl': [],
        'Vin': [],
        'Punsch': [],
        'Kräftor': [],
        'Bakfylla': [],
        'Nördigt': [],
        'Odödliga': [],
        'Ekivoka': []
    }
    
    # Split by category
    current_category = None
    current_songs = []
    
    lines = content.split('\n')
    i = 0
    
    while i < len(lines):
        line = lines[i]
        
        # Check for category markers
        if 'if (type == SongType.' in line:
            for cat_name in categories.keys():
                if f'SongType.{cat_name}' in line:
                    # Save previous category if exists
                    if current_category and current_songs:
                        categories[current_category] = current_songs
                    
                    current_category = cat_name
                    current_songs = []
                    break
        
        # Look for song definitions
        if 'songs.Add(new Song(' in line and current_category:
            # Collect the entire song definition (may span multiple lines)
            song_text = line
            j = i + 1
            
            # Keep reading until we find the closing ));
            paren_count = line.count('(') - line.count(')')
            while j < len(lines) and paren_count > 0:
                song_text += '\n' + lines[j]
                paren_count += lines[j].count('(') - lines[j].count(')')
                j += 1
            
            # Parse the song
            song = parse_song(song_text)
            if song:
                current_songs.append(song)
            
            i = j - 1
        
        i += 1
    
    # Save last category
    if current_category and current_songs:
        categories[current_category] = current_songs
    
    return categories

def main():
    """Main function to parse and output songs."""
    songs_file = 'Songs.cs'
    
    print("Parsing Songs.cs...")
    categories = parse_songs_cs(songs_file)
    
    # Print statistics
    print("\nCategory Statistics:")
    print("=" * 50)
    for cat_name, songs in categories.items():
        print(f"{cat_name}: {len(songs)} songs")
    
    # Generate Dart code for each category
    print("\n\nGenerating Dart code...")
    print("=" * 50)
    
    for cat_name, songs in categories.items():
        if songs:
            print(f"\n\n// {cat_name} Category ({len(songs)} songs)")
            print(f"Category(")
            print(f"  name: '{cat_name}',")
            print(f"  songs: [")
            
            for i, song in enumerate(songs[:5]):  # Print first 5 as sample
                try:
                    dart_code = song_to_dart(song)
                    print(dart_code)
                except Exception as e:
                    print(f"      // Error converting song '{song['title']}': {e}")
            
            if len(songs) > 5:
                print(f"      // ... and {len(songs) - 5} more songs")
            
            print(f"  ],")
            print(f"),")
    
    # Save to JSON for easier processing
    with open('songs_data.json', 'w', encoding='utf-8') as f:
        json.dump(categories, f, ensure_ascii=False, indent=2)
    
    print("\n\nSongs data saved to songs_data.json")

if __name__ == '__main__':
    main()
