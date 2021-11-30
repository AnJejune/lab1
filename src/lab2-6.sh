#!/bin/bash

eval "mkdir $1"
eval "cd $1"

i=0
while [ $i -lt 5 ]
do
	eval "touch file$i.txt"
	i=`expr $i + 1`
done

eval "tar -cvf files.tar file0.txt file1.txt file2.txt file3.txt file4.txt"

eval "mkdir files"

eval "mv files.tar files"

eval "cd files"

eval "tar -xf files.tar"

exit 0
