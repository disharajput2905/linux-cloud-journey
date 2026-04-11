#!/bin/bash

Name=Disha
Age=20
os=VM/linux/ubuntu
echo "User is $Name and age is $Age "
echo "this is $os "
 
#use readonly before variable value to keep variable unchanged
readonly name=disha
echo "name is $name"
name=riya
echo"user is $name"



