# !/bin/bash

# Check if exactly two arguments are provided
if [ $# -ne 3 ]; then
    echo "Error: This script requires exactly two input files."
    exit 1
fi

cat $1 > $3
cat $2 >> $3
echo "Merged File is"
cat $3