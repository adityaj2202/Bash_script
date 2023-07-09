#!/bin/bash

# Check if files exist in the current directory based on the passed file names
for fileName in "$@"; do
    if [ -e "$fileName" ]; then
        echo "$fileName exists in the current directory."
    else
        echo "$fileName does not exist in the current directory."
    fi
done
