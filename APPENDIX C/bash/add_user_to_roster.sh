#!/usr/bin/bash


if [ $# -ne 3 ]; then 
	echo "Error: You need to provide three names." 
	echo "Usage: $0 <name1> <name2> <name3>"
	exit 1
fi

# Add users to roster file.
echo "$1" >> roster.txt
echo "$2" >> roster.txt 
echo "$3" >> roster.txt 

echo "Completed!"


