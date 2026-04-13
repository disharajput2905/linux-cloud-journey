#!/bin/bash
read -p "enter your age: " age
if [ "$age" -lt 18 ]
then
   echo "minor"
elif [ "$age" -ge 18 ] && [ "$age" -lt 60 ]
then
   echo "adult"
else 
   echo "senior citizen"
fi
