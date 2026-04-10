#!/bin/bash

#create a user by scripting

read -p "Enter username: " username

if id "$username" &>/dev/null; then
  echo "user alreday exits!"
else
   sudo useradd -m "$username"
   sudo passwd "$username"
echo "user $username created successfully."

fi
