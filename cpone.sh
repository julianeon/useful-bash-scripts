#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename="$1"
extension="${filename##*.}"
base="${filename%.*}"

new_filename="${base}_1.${extension}"

cp "$filename" "$new_filename"

