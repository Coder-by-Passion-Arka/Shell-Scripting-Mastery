# !/bin/bash

str="Hello World, How are you!"

echo "Declared a string variable 'str': ${str}"
# Length of the string variable
echo "Length of str: ${#str}"

# Converting the string uppercase
echo "Upper Case of str: ${str^^}"

# Converting the string lowercase
echo "Lower Case of str: ${str,,}"

# Replace a parts of a string
replaced_str=${str/"World"/"India"} # {string_var}/{substring}/{replacement_string}
echo "Newly replaced string is: ${replaced_str}"

# Slice an string
sliced_str=${str:0:5}
echo "The sliced string is: ${sliced_str}"