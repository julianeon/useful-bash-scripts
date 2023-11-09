#!/bin/bash

# Check if an argument is provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 <output_file>"
  exit 1
fi

# Get the clipboard content and save it to the specified file
xclip -o > "$1"

# Open the file in Vim
vim "$1"

