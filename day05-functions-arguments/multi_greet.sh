#!/bin/bash
if [ $# -eq 0 ]; then
echo "please provide atleast one name."
exit 1
fi
for name in $@
do
echo "HELLO $name "
done
