#!/bin/bash
 
read -p "enter number: " num
if [" $num" -gt 0 ]
then 
  echo "number is postive"
elif [ "$num" -lt 0 ]
then
  echo "number is negative"
else 
  echo "number is zero"
fi
