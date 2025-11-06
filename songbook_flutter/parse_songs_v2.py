#!/usr/bin/env python3
"""
Improved C# Songs.cs parser that correctly handles multi-line string concatenation.
"""

import re
import json

def parse_songs_cs_improved(filepath):
    """Parse Songs.cs by properly handling string concatenation with +"""
    
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Define categories
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
        'Ekivoka': [],
    }
    
    # Find each category section
    current_category = None
    in_get_all_songs = False
    in_ekivoka_method = False
    
    # Split into lines
    lines = content.split('\n')
    i = 0
    
    while i < len(lines):
        line = lines[i]
        
        # Track which method we're in
        if 'public static List<Song> GetAllSongs' in line:
            in_get_all_songs = True
            in_ekivoka_method = False
        elif 'public static List<Song> GetEkivokaSongs' in line:
            in_ekivoka_method = True
            in_get_all_songs = False
            current_category = 'Ekivoka'
        elif 'return songs;' in line and (in_get_all_songs or in_ekivoka_method):
            # End of method
            if in_ekivoka_method:
                in_ekivoka_method = False
                current_category = None
            # Don't reset in_get_all_songs as there might be more categories
        
        # Check for category start in GetAllSongs method
        if in_get_all_songs:
            for cat_name in ['Klassiskt', 'Nubbe', 'Öl', 'Vin', 'Punsch', 'Kräftor', 'Bakfylla', 'Nördigt', 'Odödliga']:
                if f'if (type == SongType.{cat_name})' in line:
                    current_category = cat_name
                    break
        
        # Look for songs.Add(new Song(
        if 'songs.Add(new Song(' in line and current_category:
            # Collect entire song definition
            song_lines = []
            j = i
            
            # Keep collecting until we find the closing ));
            paren_count = 0
            started = False
            
            while j < len(lines):
                song_lines.append(lines[j])
                
                # Count parentheses
                for char in lines[j]:
                    if char == '(':
                        paren_count += 1
                        started = True
                    elif char == ')':
                        paren_count -= 1
                
                # Check if we've closed the song
                if started and paren_count == 0:
                    break
                
                j += 1
            
            # Now parse this song
            song_text = '\n'.join(song_lines)
            song = parse_song_improved(song_text)
            
            if song:
                categories[current_category].append(song)
            
            i = j
        
        i += 1
    
    return categories

def parse_song_improved(song_text):
    """Parse a single song, handling C# string concatenation properly."""
    
    # Extract the 5 parameters: title, melody, author, lyrics, about
    # Each parameter is a C# string that may span multiple lines with + concatenation
    
    fields = []
    current_field = []
    in_string = False
    escape_next = False
    i = 0
    
    # Skip to the opening parenthesis after "new Song"
    match = re.search(r'new Song\s*\(', song_text)
    if not match:
        return None
    
    i = match.end()
    
    while i < len(song_text) and len(fields) < 5:
        char = song_text[i]
        
        if escape_next:
            # Handle escape sequences
            if char == 'n':
                current_field.append('\n')
            elif char == 't':
                current_field.append('\t')
            elif char == 'r':
                current_field.append('\r')
            elif char == '"':
                current_field.append('"')
            elif char == '\\':
                current_field.append('\\')
            else:
                current_field.append(char)
            escape_next = False
        elif in_string:
            if char == '\\':
                escape_next = True
            elif char == '"':
                # Check if this is the end of the string or start of concatenation
                # Look ahead for + or ,
                j = i + 1
                while j < len(song_text) and song_text[j] in ' \t\n\r':
                    j += 1
                
                if j < len(song_text) and song_text[j] == '+':
                    # String concatenation - continue collecting
                    # Skip past the + and any whitespace to the next "
                    k = j + 1
                    while k < len(song_text) and song_text[k] in ' \t\n\r':
                        k += 1
                    
                    if k < len(song_text) and song_text[k] == '"':
                        # Continue with next string segment
                        i = k
                    else:
                        # End of string field
                        fields.append(''.join(current_field))
                        current_field = []
                        in_string = False
                else:
                    # End of string field
                    fields.append(''.join(current_field))
                    current_field = []
                    in_string = False
            else:
                current_field.append(char)
        else:
            # Not in string - look for start of string
            if char == '"':
                in_string = True
                current_field = []
        
        i += 1
    
    # If we ended while still in a field, add it
    if current_field and in_string:
        fields.append(''.join(current_field))
    
    if len(fields) >= 5:
        return {
            'title': fields[0],
            'melody': fields[1],
            'author': fields[2],
            'lyrics': fields[3],
            'about': fields[4]
        }
    
    return None

def main():
    """Parse and generate JSON data."""
    print("Parsing Songs.cs with improved parser...")
    categories = parse_songs_cs_improved('Songs.cs')
    
    # Print statistics
    print("\nCategory Statistics:")
    print("=" * 50)
    total = 0
    for cat_name, songs in categories.items():
        if songs:
            print(f"{cat_name}: {len(songs)} songs")
            total += len(songs)
    
    print(f"\nTotal: {total} songs")
    
    # Save to JSON
    with open('songs_data.json', 'w', encoding='utf-8') as f:
        json.dump(categories, f, ensure_ascii=False, indent=2)
    
    print("\nSaved to songs_data.json")
    
    # Show sample of a multi-line song
    if categories.get('Nubbe'):
        for song in categories['Nubbe']:
            if song['title'] == 'Porros visa – pojkarnas':
                print(f"\nSample song '{song['title']}':")
                print(f"Lyrics length: {len(song['lyrics'])} characters")
                print(f"First 200 chars: {song['lyrics'][:200]}...")
                break

if __name__ == '__main__':
    main()
