#!/bin/bash

## For Loop
echo "======== For-Loop Syntax-1 ========"

for i in 1 2 3 4 5
do
    echo "Number is ${i}"
done

echo "======== For-Loop Syntax-2 ========"

for i in {1..5}
do
    echo "Number is: ${i}"
done

## Reading the values of an Array
echo "===== Accessing the values of an Array ====="
myArray=( 1 3 6 "My Life" "My Rules")

arrayLen=${#myArray[*]}
echo "Length of myArray: ${arrayLen}"

for((i=0; i<${arrayLen}; i++))
do
    echo "${i}-th element of the Array is: ${myArray[${i}]}"
done

## While loop 
echo "======== While-Loop ========"
count=0
num=10

while [ ${count} -le ${num} ]
do
    echo "Numbers ${count}"
    let count++
done

## Until Loop
echo "======== Until-Loop ========"
a=10

until [ $a -eq 0 ]
do
    echo $a
    a=`expr $a - 1`
done

## Iterating text from files 
echo "======== Reading a File Sentence-wise ========"
FILE="./folder/test.txt"
# safer read line-by-line to preserve spaces and special chars
if [ -f "${FILE}" ]; 
    then
# read → reads one line from the input stream 

# -r → keeps backslashes as normal characters instead of treating them as escape characters

# text → stores the line that was read

# IFS= → Input Field Separator, temporarily sets the input field separator to empty. It is a special shell variable with a predefined meaning.

        while IFS= read -r text; 
        do
            # echo "IFS: ${IFS}" # Input Field Seperator
            echo "text: ${text}" # line that was just read from the file
        done < "${FILE}" # tells the while loop to read from the file instead of from standard input
else
    # Print an error message to the terminal.
    echo "FILE not found: ${FILE}" >&2 # >&2 sends the output to standard error instead of standard output.
fi

# The key difference
#   read a b
#       splits input into multiple variables
#   read -r text
#       stores the line into one variable
#       but default IFS may still affect behavior in some cases
#   IFS= read -r text
#       stores the entire line into one variable
#       preserves spaces exactly