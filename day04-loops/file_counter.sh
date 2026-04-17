#!/bin/bash
count=0
for file in *.sh
do
if [ -f "$file" ]
then 
   ((count++))
fi 
done
echo "number of shell scripts in current directory is : $count"
