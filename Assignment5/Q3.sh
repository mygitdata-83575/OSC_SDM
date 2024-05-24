#!/bin/bash

# Ask for input
read -p "Enter a file or directory name: " name

# Check if name exists
if [ -e "$name" ]; then
    # Check if it's a file
    if [ -f "$name" ]; then
        # To display file size
        echo "The file '$name' exists and its size is $(du -h "$name" | cut -f1)"
    # To Check if it's a directory
    elif [ -d "$name" ]; then
        # Display directory contents
        echo "The directory '$name' exists and its contents are:"
        ls -l "$name"
    else
        # If it's neither a file nor a directory
        echo "The name '$name' exists but it is neither a file nor a directory."
    fi
else
    # If the name doesn't exist
    echo "The name '$name' does not exist."
fi
