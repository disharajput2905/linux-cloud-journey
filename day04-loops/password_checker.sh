#!/bin/bash
while true
do
read -p "enter password (min 8 chars): " pass
if [ $pass -ge 8 ]
then
echo "strong password"
break
else 
echo " password too short , try again"
fi
done
