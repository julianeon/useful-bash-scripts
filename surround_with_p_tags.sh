#!/bin/bash

# Check if the user provided a file as an argument
if [ $# -ne 1 ]; then
  echo "Usage: $0 <input_file>"
  exit 1
fi

input_file="$1"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
  echo "Input file '$input_file' does not exist."
  exit 1
fi

# Read the input file line by line, surround each line with <p> tags, and print it
while IFS= read -r line; do
  echo "<p>$line</p>"
done < "$input_file"
