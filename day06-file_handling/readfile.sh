#!/bin/bash
while read line
do
echo "User domain is $line"
done < domaininfo.txt
