# !/bin/bash

# transform all .tif files in ../data/image_convert/ to .png files in results directory

for f in ../data/image_convert/*.tif; 
    do  
        echo "Converting $f"; 
        convert "$f" "../results/$(basename "$f" .tif).png"; 
    done