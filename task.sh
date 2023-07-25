bash#!/bin/bash
file=$1
rm -rf groups
mkdir groups
cd groups
while read string
do
	if [[ "$string" == *[0-9]* ]]
	then
		mkdir $string
		this=$string
	 	#echo $string
	else
		#echo "$string   1"
	 	s=$(echo "$string" | cut -d ' ' -f 1)
	 	#echo "$s   file"
	 	touch $this/$s.txt
	fi
done < ../$file