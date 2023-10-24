#!/bin/bash

# Loop through all entries in the current directory
for entry in ./*; do
    # Check if the entry is a directory
    if [ -d "$entry" ]; then
        # Remove leading "./" from the entry
        entry="${entry:2}"

        # Print the directory name in green color
        echo -e "\033[32m$entry\033[0m"
    fi
done

