#/bin/bash
i=1
while read line
do
	if [ ! -z "$line" ]
	then
		echo "$i) $line"
		i=$(( $i + 1 ))
	fi
done < $1
