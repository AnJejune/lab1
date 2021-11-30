#!/bin/sh
if [ ! -d $1 ]
then
        mkdir $1
fi

eval cd $1
i=0
for file_name in file0.txt file1.txt file2.txt file3.txt file4.txt
do
	touch $file_name
done

for dir_name in file0 file1 file2 file3 file4
do
        mkdir $dirname
done

for dir_name in file0 file1 file2 file3 file4
do 
	case $dir_name in
	       	file0)
			eval ln -s file0.txt $dir_name;;
		file1)
			eval ln -s file1.txt $dir_name;;
		file2)
                        eval ln -s file2.txt $dir_name;;
		file3)  
                        eval ln -s file3.txt $dir_name;;
		file4)  
                        eval ln -s file4.txt $dir_name;;
	esac

done
exit 0
