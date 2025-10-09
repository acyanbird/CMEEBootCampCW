# !/bin/bash

echo "Usage: $0 <file>"
echo "Please provide correct relative paths for all files."
if [ $# -ne 1 ]; then
    echo "Error: This script requires exactly one input file."
    exit 1
fi

NumLines=`wc -l < $1`
echo "The file $1 has $NumLines lines"
echo