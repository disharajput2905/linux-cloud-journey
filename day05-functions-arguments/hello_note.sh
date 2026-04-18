#!/bin/bash
greet () {
 echo  "======================="
 echo  "   WELCOME $1!$2       "
 echo  "    city is $3         "
 echo  "========================"
}
read -p "enter your name: " name
greet $name 21 New Delhi

