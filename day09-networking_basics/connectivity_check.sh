#!/bin/bash
read -p "which site you want to check? " site
ping -c 1 $site &> /dev/null
if [ $? -eq 0 ]
then
echo "Server is reachable ! "
else 
echo "failed to connect"
fi
