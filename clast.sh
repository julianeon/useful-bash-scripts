#!/bin/bash

# Find the last modified file in the current directory
last_modified_file=$(ls -t | head -n 1)

# Check if the file exists
if [ -f "$last_modified_file" ]; then
    # Display the contents of the file
    cat "$last_modified_file"
else
    echo "No file found."
fi
