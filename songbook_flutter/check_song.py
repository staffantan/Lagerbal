import json

# Load the parsed data
with open('songs_data.json', 'r', encoding='utf-8') as f:
    data = json.load(f)

# Find the specific song in Ekivoka category
for song in data['Ekivoka']:
    if 'Porros visa' in song['title'] and 'pojkarnas' in song['title']:
        print(f"Title: {song['title']}")
        print(f"Lyrics length: {len(song['lyrics'])} characters")
        print(f"About length: {len(song['about'])} characters")
        print(f"\nLyrics:\n{song['lyrics'][:300]}...")
        print(f"\nAbout: {song['about']}")
        break
