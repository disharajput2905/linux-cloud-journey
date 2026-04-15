#!/bin/bash
 read -p "enter first number: " num1
 read -p  "enter second number:" num2
 read -p  "enter operaton (+, -, *, /)" op
case $op in
 +)  echo "result: $((num1 + num2))"
     ;;
 -)  echo "result: $((num1 - num2))"
     ;;
\*)  echo "result: $((num1 * num2))"
     ;;
 /)  echo "result: $((num1 / num2))"
     ;;
 *)  echo "invalid"
      ;;
esac

