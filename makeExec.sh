#!/bin/bash
if [ $# == 1 ];then
	if [ -f $1 ];then 
		chmod a+x $1
	fi
else
	echo "USAGE:ENTER ONLY ONE ARGUMENT"
fi

