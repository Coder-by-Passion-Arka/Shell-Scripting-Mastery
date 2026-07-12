#!/bin/bash

# This Script shows how to use variables
# We can not space seperate variables from the values they are assigned
a=10
name="Arka"
age=22

echo "My name is ${name}. My Age is ${age}"

# Constant Variable
readonly college="IIEST Shibpur"
# college = "VMS" # Uncomment for errors
echo "I Graduated from ${college}"