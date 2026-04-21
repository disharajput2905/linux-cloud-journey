#!/bin/bash
read -p "enter directory name: " folder
if [ -d $folder ]
then
echo "directory exists"
else
echo "directory does not exist"
fi
