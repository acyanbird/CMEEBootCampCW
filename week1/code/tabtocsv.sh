#!/bin/sh
# Author: Betty Liu qql25@ic.ac.uk
# Script: tabtocsv.sh
# Description: substitute the tabs in the files with commas
#
# Saves the output into a .csv file
# Arguments: 1 -> tab delimited file
# Date: Oct 2025

echo "Usage: $0 <file>"
echo "Please provide correct relative path."
if [ $# -ne 1 ]; then
    echo "Error: This script requires exactly one input file."
    exit 1
fi

filename=$(basename "$1")
echo "Creating a comma delimited version of $1 ..."
cat $1 | tr -s "\t" "," >> ../../results/$filename.csv
echo "Done!"
exit