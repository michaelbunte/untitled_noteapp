# Untitled NoteApp
This is the barebones notetaking application that I am using for journalling.

## Creating an entry

./make.sh creates a new entry

./log.sh prints out all entries, in chronological order 

## Other functionality

.txt entries can be removed without causing problems to ./log.sh

## Limitations
Whatever ./log.sh prints out completely depends on what the .txt files are called, so renaming files outside of the current convention will likely cause the files that are renamed to not be printed.

Only works on UNIX systems

Currently no way to renumber entry filenames after removing an old entry.

Programs must be stored in the directory that contains the text files. 