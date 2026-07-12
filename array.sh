# !/bin/bash
echo "===== Fundamentals of Array ====="
myArray=( 1 20 30.5 Hello "Old Array starts here!")

echo "Value in the 3rd index of myArray: ${myArray[3]}"

echo "All the values in the myArray: ${myArray[*]}"

echo "Length of the myArray: ${#myArray[*]}"

echo "Values of myArray from 2nd-3rd index: ${myArray[*]:2:2}" # Array[*]:{start_index}:{number_of_ele_from_start}

echo "Values of myArray from 2nd to last index: ${myArray[*]:2}"

echo "Updating the values in an array"
myArray+=( "New Array Starts" 78.324312 -1)
echo "Updated myArray: ${myArray[*]}"

echo "====== Hash Map Starts here ======"
## Key value pairs using Arrays
declare -A hashArray
hashArray=( 
    [name]=Arka 
    [age]=22
    [city]=Kolkata
    [college]="IIEST Shibpur"
)

echo "My name is ${hashArray[name]}"
echo "My age  is ${hashArray[age]}"
echo "My city is ${hashArray[city]}"
echo "My college is ${hashArray[college]}"
