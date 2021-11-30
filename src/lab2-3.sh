#!/bin/sh
cm=`expr $2 \* $2`
overWeight=2300
rowWeight=1850
cm=$(echo "scale=2; $cm / 10000" | bc)
bmi=$(echo "scale=2; $1 / $cm" | bc)
bmi=$(echo "scale=2; $bmi * 100" | bc)
bmi=$(echo $(printf %.f $bmi))

if [ $bmi -ge $overWeight ]
then	
	echo OverWeight
elif [ $bmi -ge $rowWeight ]

then
	echo NomalWeight
else
	echo LowWeight
fi

