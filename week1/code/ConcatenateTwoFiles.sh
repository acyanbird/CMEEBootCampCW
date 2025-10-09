# !/bin/bash

echo "Usage: $0 <file1> <file2> <output_file>"
echo "Please provide correct relative paths for all files."
# Check if exactly two arguments are provided
if [ $# -ne 3 ]; then
    echo "Error: This script requires exactly two input files and one output file."
    exit 1
fi

cat $1 > $3
cat $2 >> $3
echo "Merged File is"
cat $3