#!/bin/bash
read -p "how many users to create?:  " num
for i in $(seq 1 $num)
do
echo "creating users dev$i"
sudo useradd dev$i
done
echo "user creation completed"

