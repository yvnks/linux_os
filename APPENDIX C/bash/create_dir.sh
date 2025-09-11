#!/usr/bin/bash

# Check if file exists.

if [ ! -f roster.txt ]; then 
	echo "Error: File not found"
	exit 1
else 
	echo "File found, processing..."
fi 

# Declaring the array so i can pass the items in the file to it. 

declare -a namesARRAY

while IFS= read -r LINE; do 
	namesARRAY+=("$LINE")
done < roster.txt 

# Creating a for loop to cycle through the items in the array

echo "Creating a folder..."

for NAME in "${namesARRAY[@]}"; do 

	# Check if directory exists.
	if [ -d ~/$NAME ]; then
        	echo "The directory $NAME exists"
	else
        	echo "Directory does not exists"
        	mkdir -v ~/"$NAME"
	fi	
done

# List users directory. 
ls ~
