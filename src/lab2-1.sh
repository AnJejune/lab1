#!/bin/sh
num=$1
i=1
while [ $num -ge $i ]
do
	echo hello world
	i=`expr $i + 1`
done
exit 0
