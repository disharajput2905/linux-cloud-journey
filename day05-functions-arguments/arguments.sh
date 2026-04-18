#!/bin/bash
#if to make sure script doesn't execute without arguments 
if [ $# -eq 0 ]
then  
echo "please provide atleast 1 argument"
exit
fi 

# accessing the arguments
echo "first argument is : $1"
echo "second argument is : $2"
echo "number of arguments : $#"
echo "all of the arguments : $@"

#for loop to print in format 
 for args in $@
do 
echo "Argument is $args"
done
