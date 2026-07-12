#!/bin/bash

echo "Function to Add two numbers"
function addtion () {
    local num1=$1 # local makes the variable available only inside the function. Essentially, private var
    local num2=$2
    echo "The first num is: ${num1}"
    echo "The second num is: ${num2}"
    local sum=$((num1 + num2))
    echo "Sum of ${num1} and ${num2} is: ${sum}"
}

addtion "$1" "$2"