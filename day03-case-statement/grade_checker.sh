#!/bin/bash
read -p "enter grade:(A/ B/ C/ D) " grade
case $grade in
  A) echo "very good";;
  B) echo "good" ;;
  C) echo "average" ;;
  D) echo "needs improvement" ;;
  *) echo "invalid";;
esac
