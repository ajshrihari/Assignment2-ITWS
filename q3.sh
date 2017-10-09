#!/bin/bash
text=$1



flag=0
for line in `find -iname "*.txt"`
do
	num=$((`cat $line | grep $text | wc -l`))
	if [[ $num -gt 0 ]]
	then
		flag=$((flag+1))
		echo "$num lines in $line"
	fi
done
if [[ $check -ne 0 ]]
then
	exit 1
else
 
	exit 0
fi

