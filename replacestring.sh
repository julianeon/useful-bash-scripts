#!/bin/bash

# Check if the correct number of arguments are supplied
if [[ $# -ne 3 ]]; then
    echo "Usage: ./replacestring.sh <file> <search_string> <replace_string>"
    exit 1
fi

# Extract the arguments
FILE=$1
SEARCH=$2
REPLACE=$3

# Use sed to replace the strings in the specified file
sed -i "s/$SEARCH/$REPLACE/g" "$FILE"

