# Arrays in Bash Scripting. 
echo "helena" >> names.txt
echo "bob" >> names.txt
echo "thomposon" >> names.txt 

#This is a comment. 
# The crunch '#' prefixed before the array name displays the length of the array.
ARRAYNAMES=( $(cat names.txt))
LENGTH=${#ARRAYNAMES[@]} # The @ symbol lists all the contents in the array without creating a for loop.
echo "The length of the array is: $LENGTH" 

#Control structures. IF STATEMENTS.
if TEST-COMMANDS ; then CONSEQUENT-COMMANDS; fi
 
if [ -a $1 ] && [ -x $1 ]; 
    then 
        echo "The file exists and is exucutable."
    else
        echo " File does not exist." &> ~/Documents/file.log
        exit 1
fi 

# Create file if not exist.
if [ -e $1 ]; 
    then 
        echo "$1 exist."
    else 
        mkdir ~/Documents/$1
fi

# Check if positional parameters exceed a certain number.
if [ $# -gt 5] then; 
    echo "You entered more than 5 parameters."
else
    echo "Great Job! You entered $# Parameters."
fi 

# While loops.
while read $LINE 
do echo $LINE; mkdir -v /tmp/$LINE
done < names.txt

# For loops. 
for args in [lists];
do 
    # code here
done

for NAMES in ${#NAMESARRAY[@]};
do 
    echo "The names in the file are: $NAMES"
done

declare -a planetARRAY
planetARRAY=( mars, earth, mercury)
LENGTH=${#planetARRAY[@]}
for i in ${#planetARRAY[@]};
do 
    echo "ARRAY LEGNTH IS: $LENGTH"
done 

# or traditional c for loop
for ((accumulator=0; accumulator<$LENGTH; accumulator++));
do 
    echo ${#planetARRAY[$i]}
    sleep 1
done

echo -e "\n Finished launching and sleeping for 25 seconds."
for seconds in {1..25}; do echo "."; sleep 1; done
        


# Positional Parameters. posparam.sh
echo "This is \$0: $0"
echo "The parameter \$1: $1"
echo "The length of items passed in the array is \$#: $#"
echo "The entire number of items passed in the array \$@: $@"