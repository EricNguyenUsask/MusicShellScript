Write the BASH shell script question3.sh so that it does the following:
1. Change the current working directory to the the music subdirectory that contains the music
database (assume that when the script starts, that the current working directory is the same
directory that contains the question3.sh script file).
2. Display on the console the names of all the genre directories within the music directory (now the
current directory) in alphabetical order.
3. Prompt the user to enter the name of one of the displayed genres. You may assume that the
user always enters a valid, existing genre, but you must accept case-insensitive genre names,
interpreting user responses as if they had been typed in all lower-case. For example, if the user
enters "Pop", or "POP", this should be interpreted as the all-lowercase "pop".
4. If the user entered one of the seven special genre names that contain sub-genres, display in
alphabetical order all the names of all of the sub-genre directores within the directory for the
user’s selected genre as well as the main genre name (exclude artist folder names!). Then prompt
them to enter one of those (sub-)genre names.
5. Create a new file in the same directory as question3.sh (i.e. in the directory ../ since the
current directory is music) that contains the names of all of the artist directories (and only
artist directories) in the selected genre or sub-genre directory sorted in alphabetical order. If
<genre> is the name of the selected genre or sub-genre, the name of the file written to should be
<genre>_artists.txt. If the output file already exists, overwrite it.
For example, if the user selected the genre broadway, then the name of the output file should be
broadway_artists.txt and it should contain the names of all the artist folders within music/broadway.
If the user selected the dance-pop sub-genre of pop, then the output file name should be dance-pop_artists.txt
and it should contain all the artist folder names within music/pop/dance-pop.
If the user selected hip-hop as the main genre, and then hip-hop again as the sub-genre (i.e.
entered the main genre again), then the output file should be hip-hop_artists.txt and contain
the names of the artist directories within the music/hip-hop directories.
6. Determine how many artists were in the selected (sub-)genre. Display a message indicating how
many artists were found in the selected (sub-)genre.
