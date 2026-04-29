#!/bin/bash
logfile="delete.log"

# check if argument is provided 
if [ $# -eq 0 ]; then
    echo "ERROR: No Filename is provided."
    echo "Usage: $0 <filename>"
      exit 1  
fi

file=$1
 
# check if file exists 
if [ ! -f "$file" ]; then
    echo "ERROR: file does not exist. "
     exit 2
fi

# Ask confirmation
read -p " Are you sure you want to delete $file? (yes/no): " choice
if [ "$choice" != "yes" ]; then
    echo "Deletion Cancelled! "
     exit 0
fi

#Delete file
rm "$file"

# Check if file deleted
if [ $? -eq 0 ]; then
    echo "$(date) - $file deleted successfully. " >> "$logfile"
    echo  "file deleted successfully"
     exit 0
else
    echo " ERROR: failed to delete $file! "
     exit 3
fi
