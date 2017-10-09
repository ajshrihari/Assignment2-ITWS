#!/bin/bash
 n=$1
if [ $n -eq 0 ]
then
	echo "Zero not permitted"
elif [ $n -ge 4000 ]
then
	
	echo "Invalid:Valid Roman numerals range is 0-3999"
else
	unit=$((n%10))
	case $unit in
		0) num="";;
		1) num="I";;
		2) num="II";;
		3) num="III";;
		4) num="IV";;
		5) num="V";;
		6) num="VI";;
		7) num="VII";;
		8) num="VIII";;
		9) num="IX";;
	esac
	n=$((n/10))
	ten=$((n%10))
	case $ten in
		0) num="$num";;
		1) num="X$num";;
		2) num="XX$num";;
		3) num="XXX$num";;
		4) num="XL$num";;
		5) num="L$num";;
		6) num="LX$num";;
		7) num="LXX$num";;
		8) num="LXXX$num";;
		9) num="XC$num";;
	esac
	n=$((n/10))
	hundred=$((n%10))
	case $hundred in
		0) num="$num";;
		1) num="C$num";;
		2) num="CC$num";;
		3) num="CCC$num";;
		4) num="CD$num";;
		5) num="D$num";;
		6) num="DC$num";;
		7) num="DCC$num";;
		8) num="DCCC$num";;
		9) num="CM$num";;
	esac
	n=$((n/10))
	thousand=$((n%10))
	case $thousand in
		0) num="$num";;
		1) num="M$num";;
		2) num="MM$num";;
		3) num="MMM$num";;
	esac
	echo "$num"
fi
