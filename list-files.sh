#!/bin/bash

# Check if the folder path argument is provided
if [ $# -lt 1 ]; then
    echo "Please provide the folder path as an argument."
    exit 1
fi

# Get the folder path from the first argument
folderPath=$1

# Check if the folder exists
if [ ! -d "$folderPath" ]; then
    echo "Folder not found: $folderPath"
    exit 1
fi

# Get the list of files in the folder
files=$(ls -p "$folderPath" | grep -v /)

# Display the names of the files
for file in $files; do
    echo "$file"
done
