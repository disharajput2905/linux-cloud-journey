#!/bin/bash
declare -A arraykey
arraykey=( [name]=Disha [age]=21 [city]=Delhi [domain]=Cloud_security )
echo "User is ${arraykey['name']}"
echo "city is ${arraykey['city']}"
echo "domain of study is ${arraykey['domain']}"
echo ".................................................."
echo "LETS COOK!"
