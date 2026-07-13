#!/bin/bash

full_path=$(realpath "$1")
echo "Full Path: ${full_path}"

dir_path=$(dirname "${full_path}")
if [ -d "${dir_path}" ]; then
    echo "Directory name: ${dir_path}"
else
    echo "The folder mentioned doesn't exist"
    exit 1
fi

file_name=$(basename "${full_path}")
if [ -f "${full_path}" ]; then
    echo "File name: ${file_name}"
else
    echo "The file specified doesn't exist"
    exit 1
fi