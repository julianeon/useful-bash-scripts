#!/bin/bash

# Check if a file name was provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# The name of the file to check
FILE="$1"

# Check if the file exists
if [ ! -f "$FILE" ]; then
    echo "Error: File does not exist."
    exit 1
fi

# Get the human-readable size of the file
SIZE=$(ls -lh "$FILE" | awk '{ print $5 }')

echo "Size of $FILE: $SIZE"
