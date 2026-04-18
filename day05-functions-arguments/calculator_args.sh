#!/bin/bash
if [ $# -ne 3 ]; then
echo "usage : $0 num1 operator num2"
exit 1
fi
 num1=$1
 op=$2
 num2=$3
case $op in
+)echo $((num1 + num2)) ;;
-)echo $((num1 - num2 )) ;;
x)echo $((num1 * num2)) ;;
/)echo $((num1 / num2)) ;;
*)echo "ivalid operator" ;;
esac
