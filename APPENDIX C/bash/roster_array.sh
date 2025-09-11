j1munii@j1munii-VirtualBox:~/Documents/itmo356/scripts$ ls -lF
total 12
-rwxrw-r-- 1 j1munii j1munii 267 Sep 11 13:52 add_user_to_roster.sh*
-rwxrw-r-- 1 j1munii j1munii 249 Sep 11 14:15 roster_array.sh*
-rw-rw-r-- 1 j1munii j1munii  36 Sep 11 13:45 roster.txt
j1munii@j1munii-VirtualBox:~/Documents/itmo356/scripts$ cat roster_array.sh 
#!/usr/bin/bash


if [ ! -e roster.txt ]; then 
	echo "Error: File not found."
	exit 1 
fi 


declare -a rosterARRAY

while IFS= read -r LINE 
    do rosterARRAY+=("$LINE")
done < roster.txt

echo "The second item in the file is ${rosterARRAY[1]}"

j1munii@j1munii-VirtualBox:~/Documents/itmo356/scripts$ ./roster_array.sh 
The second item in the file is Rey mysterio
j1munii@j1munii-VirtualBox:~/Documents/itmo356/scripts$ cat roster.txt 
Peter parker
Rey mysterio
John Cena
j1munii@j1munii-VirtualBox:~/Documents/itmo356/scripts$ 
