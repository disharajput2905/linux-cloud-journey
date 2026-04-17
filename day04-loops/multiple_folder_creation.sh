#!/bin/bash
read -p "how many directories to create?: " num
for i in $(seq 1 $num)
do
mkdir cloud$i
done
echo "folders created successfully"
# use mkdir -p project/{src,logs,config,backups} for nested folder structure
