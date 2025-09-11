#!/usr/bin/bash

NAME_FILE=~/Documents/Linux-text-book-part1/files/Chapter-08/lab
DUPLICATE_DIR=/tmp/duplicates.txt

# Check if the names file exists
if [ ! -f $NAME_FILE ]; then 
    echo "Error: The directory does not exist."
    exit 1
fi 

# While loop to read names.
while IFS= read -r NAME; do 
    DIR_LOCATION=/tmp/$NAME

    if [ -d "$DIR_LOCATION" ]; then 
        echo "Sorry '$DIR_LOCATION' already exists." 
        echo "$NAME" >> DUPLICATE_DIR
    else
        mkdir -v "$DIR_LOCATION"
    fi 
done < "$NAME_FIL"E

# crontab 
crontab -e ~/



