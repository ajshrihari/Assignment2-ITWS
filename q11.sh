#/bin/bash
x=1
while [ $x -le 10 ]
do
    
    square=`expr $x \* $x`
    echo $square
    
    x=$((x + 1))
done
i=1
while [ $i -le 10 ]
do 
    echo $[$i**$i]
    i=$((i + 1))
done

f1=0
f2=1
f3=$((f1+f2))
while [ $f3 -le 100 ]
do
	if [ $((f3%2)) -eq 1 ]
	then
		echo $f3
	fi
	f1=$f2
	f2=$f3
	f3=$((f1+f2))
done
