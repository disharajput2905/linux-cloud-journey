#!/bin/bash
read -p "which website you want to check" URL
status=$(curl -o /dev/null -s -w "%{http_code}" $URL)
if [ $status -eq 200 ]
then
echo "website is up"
else 
echo " website is down"
fi
