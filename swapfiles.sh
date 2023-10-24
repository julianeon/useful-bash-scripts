#!/bin/bash

# Check if two filenames are provided as command-line arguments
if [ $# -ne 2 ]; then
  echo "Usage: $0 <file_a> <file_b>"
  exit 1
fi

file_a="$1"
file_b="$2"
temp_file="temp.txt"

# Check if both files exist
if [ ! -e "$file_a" ] || [ ! -e "$file_b" ]; then
  echo "One or both of the files do not exist."
  exit 1
fi

# Copy the contents of file_a to temp_file
cp "$file_a" "$temp_file"

# Copy the contents of file_b to file_a
cp "$file_b" "$file_a"

# Copy the contents of temp_file to file_b
cp "$temp_file" "$file_b"

# Clean up the temporary file
rm "$temp_file"

echo "Contents of $file_a and $file_b have been swapped."

