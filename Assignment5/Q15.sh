
#!/bin/bash

# Function to convert text to reverse case
reverse_case() {
    tr '[:upper:][:lower:]' '[:lower:][:upper:]'
}

# Ask for input
read -p "Enter the name of the first file: " file1
read -p "Enter the name of the second file: " file2

# Check if the first file exists
if [ ! -f "$file1" ]; then
    echo "Error: The first file '$file1' does not exist."
    exit 1
fi

# Read contents of the first file, convert to reverse case, and append to the second file
reverse_case < "$file1" >> "$file2"

echo "Contents of '$file1' appended in reverse case to '$file2'."
