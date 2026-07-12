#!/bin/bash

# let marks
# read -p "Enter your marks: " marks

# ## If-Elif ladder

# if [[ ${marks} -gt 80 ]]; # It is a must to put 'single space' before and after the conditional statement within the inner brackets
#     then
#         echo "First division. PASS!"
# elif [[ ${marks} -ge 60 ]]; 
#     then
#         echo "Second division. PASS!"
# elif [[ ${marks} -ge 40 ]];
#     then
#         echo "Third division. PASS!"
# else
#         echo "You FAIL!"
# fi

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
    a) date;;
    b) ls;;
    c) pwd;;
    *) echo "Please provide a letter 'a-c'";;
esac