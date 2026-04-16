#!/bin/bash
echo "======================"
echo " SYSTEM UTILITY MENU "
echo "======================"
echo "1. show current date"
echo "2. show current directory"
echo "3. show disk usage"
echo "4. show ram usage"
echo "5. show system uptime"
echo "======================"

read -p "choose an option (1-5): " choice
case $choice in
1) date ;;
2) pwd ;;
3) df -h ;;
4) free -h ;;
5) uptime ;;
*) "invalid" ;;
esac
