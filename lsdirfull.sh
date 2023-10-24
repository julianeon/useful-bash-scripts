#!/bin/bash

# Use the current directory (.) as the starting point for find
find . -type d | sed 's|^\./||'
