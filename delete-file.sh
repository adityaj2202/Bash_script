#!/bin/bash

# Check if the file name argument is provided
if [ $# -lt 1 ]; then
    echo "Please provide the file name as an argument."
    exit 1
fi

# Get the file name from the first argument
fileName=$1

# Specify the file path to delete
filePath="./$fileName"

# Check if the file exists
if [ -f "$filePath" ]; then
    # Delete the file
    rm "$filePath"
    echo "File '$fileName' deleted successfully."
else
    echo "File '$fileName' not found."
fi
