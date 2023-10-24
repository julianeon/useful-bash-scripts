#!/bin/bash

# Count the number of arguments (files/directories) provided
num_files=$#

if [[ $num_files -gt 3 ]]; then
    read -p "You are trying to remove $num_files files. Are you sure? (y/n) " confirmation
    if [[ $confirmation == "y" || $confirmation == "Y" ]]; then
        rm "$@"
    else
        echo "Aborted."
    fi
else
    rm "$@"
fi

