#!/bin/bash
while true
do
echo "checking cpu usage..."
top -bn1 | grep "cpu"
sleep 5
done
#stop with ctrl + c
