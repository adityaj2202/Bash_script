#!/bin/bash

# Check if source and destination folder arguments are provided
if [ $# -lt 2 ]; then
    echo "Please provide source and destination folder paths as arguments."
    exit 1
fi

# Get the source and destination folder paths from the arguments
sourceFolder=$1
destinationFolder=$2

# Check if the source folder exists
if [ ! -d "$sourceFolder" ]; then
    echo "Source folder not found: $sourceFolder"
    exit 1
fi

# Check if the destination folder exists, if not, create it
if [ ! -d "$destinationFolder" ]; then
    mkdir -p "$destinationFolder"
    echo "Destination folder created: $destinationFolder"
fi

# Move files from source folder to destination folder
mv -v "$sourceFolder"/* "$destinationFolder/"
