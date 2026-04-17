#!/bin/bash
read -p "enter countdown timer: " num
while [ $num -gt 0 ]
do
echo "time left:  $num"
sleep 1
((num--))
done
echo "timer is up!"
