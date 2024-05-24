#!/bin/bash

# to Display hidden files from current directory
for file in .*; do
    # command to Exclude '.' and '..' which tell us the current and parent directories
    if [ "$file" != "." ] && [ "$file" != ".." ]; then
        echo "$file"
    fi
done
