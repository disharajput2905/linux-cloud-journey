#!/bin/bash
read -p "select day (1-7): " days
case $days in
 1) echo "monday" ;;
 2) echo "tuesday" ;;
 3) echo "wednessday" ;;
 4) echo "thursday";;
 5) echo "friday" ;;
 6) echo "saturday" ;;
 7) echo "sunday";;
 *) echo "invalid";;
esac
