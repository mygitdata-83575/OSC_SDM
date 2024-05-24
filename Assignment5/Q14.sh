#!/bin/bash

# to Display executable files from current directory
for file in *; do
    if [ -x "$file" ] && [ -f "$file" ]; then
        echo "$file"
    fi
done
