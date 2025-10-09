#!/bin/sh

#Process one file each time

echo "Usage: $0 <file>"
echo "Please provide correct relative path."
if [ $# -ne 1 ]; then
    echo "Error: This script requires exactly one input file."
    exit 1
fi

# Check if input file exists
if [ ! -f "$1" ]; then
    echo "Error: File '$1' not found!"
    echo "Please check if the file exists."
    exit 1
fi

filename=$(basename "$1")
echo "Creating a comma delimited version of $1 ..."
cat $1 | tr "," " " >> ../../results/output_$filename
echo "Done!"
exit