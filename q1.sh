#!/bin/bash
i=1
df | tail -n +2 | while read in line
do
        cap=$(echo "$line" | awk '{ print $4 }')
	cap=$(echo "$cap" | awk -F% '{ print $1 }')
	mnt=$(echo "$line" | awk '{ print $5 }')
	if [ $cap -ge $1 ]
	then
		echo -n "CRITICAL,"
	elif [ $cap -ge $2 ]
	then
		echo -n "WARNING,"
	else
		echo -n "OK,"
	fi
	echo "$mnt $cap%"
done
