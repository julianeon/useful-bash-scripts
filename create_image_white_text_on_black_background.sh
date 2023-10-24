#!/bin/bash

# Set the background color, text color, and font
background="black"
text_color="white"
font="Arial"
font_size=48

# Check if a text argument was provided
if [ -z "$1" ]; then
    echo "Please provide the text to be printed as an argument."
    exit 1
fi

# Set the text content
text="$1"

# Create a temporary image with the text
convert -size 1600x900 -background "$background" -fill "$text_color" -font "$font" -pointsize $font_size \
        -gravity center label:"$text" temp.png

# Add some padding around the image
convert temp.png -bordercolor "$background" -border 20x20 result.png

# Clean up the temporary image
rm temp.png

echo "Image created successfully as result.png."
