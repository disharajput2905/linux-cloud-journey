#!/bin/bash
read -p "enter filename: " filename
case $filename in
*.sh) echo "shell script" ;;
*.txt) echo "text file" ;;
*.jpg|*.png) echo "image file" ;;
*) echo "unknown file type" ;;
esac 
