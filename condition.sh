!/bin/bash

let marks
read -p "Enter your marks: " marks

## If-Elif ladder

if [[ ${marks} -gt 80 ]]; # It is a must to put 'single space' before and after the conditional statement within the inner brackets
    then
        echo "First division. PASS!"
elif [[ ${marks} -ge 60 ]]; 
    then
        echo "Second division. PASS!"
elif [[ ${marks} -ge 40 ]];
    then
        echo "Third division. PASS!"
else
        echo "You FAIL!"
fi

## Logical Compound statement 
let age
let country

read -p "Enter your age: " age
read -p "Enter your domicile country: " country

if [[ ${age} -ge 18 ]] && [[ ${country} -eq "India" ]];
    then 
        echo "Don't forget to vote from this year!"
else
        echo "Stay away from Indian Electoral Machine"
fi

## Ternary Operator
let first_lang
let second_lang 

read -p "Enter your first lang: " first_lang
read -p "Enter your second lang: " second_lang

[[ "${first_lang}" == "${second_lang}" ]] && echo "You only know one language" || echo "You are Bilingual"

## Switch-Case
let choice
echo "
    Welcome Switch-Case: 
        a) Get the date of now
        b) Get the files in current directory
        c) Get the path of current directory
"
read -p "Enter your choice to execute: " choice

case ${choice} in
    a) echo "Today's Date is: "
        date;;
    b) echo "Files in your current directory are: "
        ls -a;;
    c) echo "Path of current directory: "
        pwd;;
    *) echo "Please provide a letter 'a-c'";;
esac