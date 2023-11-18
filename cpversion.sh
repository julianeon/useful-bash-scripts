#!/bin/bash

# Check if a filename is passed as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename="$1"
extension="${filename##*.}"
base="${filename%.*}"

# Initialize the suffix and the new filename
suffix=1
new_filename="${base}_${suffix}.${extension}"

# Check if the new filename already exists. If it does, increment the suffix and try again
while [ -f "$new_filename" ]; do
    ((suffix++))
    new_filename="${base}_${suffix}.${extension}"
done

# Copy the file to the new filename
cp "$filename" "$new_filename"
