#!/bin/bash
echo Enter name
read name
echo Enter date 
read date
year=$((${date:0:4}))
date1=${date:5:10}
today=$(date "+%Y/%m/%d")
date2=${today:5:10}
ty=$((${today:0:4}))
if [ "$date1" == "$date2" ]
then 
	age=$(( $ty -$year ))
	echo Happy Birthday $name. You are $age years old today!
fi


