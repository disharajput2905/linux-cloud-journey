#!/bin/bash
read -p "enter filename: " filename
if [ -f "$filename" ]
then 
    echo "file exists."
else 
    echo "file not found."
fi
