#!/bin/bash

# Find the most recently modified regular file in the current directory
last_modified_file=$(find . -type f -printf "%T@ %p\n" | sort -n | tail -n 1 | awk '{print $2}')

# Open the last modified file in Vim
vim "$last_modified_file"

