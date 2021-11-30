#!/bin/sh
case $2 in
	+)	
		res=`expr $1 + $3`
		echo $res;;
	-)	
		res=`expr $1 - $3`
		echo $res;;
	*)
		echo "input + or -";;
esac
exit 0
