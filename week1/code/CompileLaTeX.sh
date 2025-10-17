#!/bin/bash

# Remove .tex extension if present
# Check if exactly one argument is provided
if [ $# -ne 1 ]; then
    echo "Error: Please input file name"
    echo "Example:bash $0 document.tex"
    exit 1
fi
filename=$(basename "$1" .tex)

pdflatex $filename.tex
bibtex $filename
pdflatex $filename.tex
pdflatex $filename.tex
evince $filename.pdf &

## Cleanup
rm *.aux
rm *.log
rm *.bbl
rm *.blg