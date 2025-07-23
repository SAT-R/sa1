import os

for song in os.listdir('sound/songs/midi/non_matching'):
    new_song = song.replace("song0", "song")
    print(song, new_song)
    os.rename('sound/songs/midi/non_matching/' + song, 'sound/songs/midi/non_matching/' + new_song)
    
