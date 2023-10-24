#!/bin/bash

directory="$HOME/Downloads"
new_name="$1"

# Find the last modified or created file in the directory
latest_file=$(ls -lt --time=atime --time=ctime "$directory" | grep -v '^d' | head -n 1 | awk '{print $NF}')

if [[ -n "$latest_file" ]]; then
    # Extract the file extension from the original file
    extension="${latest_file##*.}"
    
    # Rename the file with the new name and original extension
    new_filename="$new_name.$extension"
    mv "$directory/$latest_file" "$directory/$new_filename"
    
    echo "Renamed '$latest_file' to '$new_filename'."
else
    echo "No files found in the directory."
fi

