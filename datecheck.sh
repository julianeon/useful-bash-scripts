#!/bin/bash

# Check if the user provided a date argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <date in MMDDYY format>"
    exit 1
fi

# Parse the input date and convert it to the required format (YYYY-MM-DD)
input_date=$1
formatted_date="20${input_date:4:2}-${input_date:0:2}-${input_date:2:2}"

# Find files based on the formatted date in the current directory
file_list=$(find . -type f -newermt "$formatted_date" ! -newermt "$formatted_date + 1 day")

# Remove the './' prefix from file paths using sed
cleaned_file_list=$(echo "$file_list" | sed 's|^\./||')

# Print the cleaned file list
echo "$cleaned_file_list"
