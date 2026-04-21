#!/bin/bash
read -p "enter filename: " file
if [ -f $file ]
then
echo "file exist"
cat $file
else 
echo "file doesnot exist"
fi
