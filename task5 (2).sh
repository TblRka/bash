#!/bin/bash
declare -A counter
file="test.txt"

for var in $(cat $file)
do
	var=$(echo $var | tr [:upper:] [:lower:])
	#echo $var

	if [ "${var:(-1)}" = "!" ] || [ "${var:(-1)}" = "." ] || [ "${var:(-1)}" = "," ] || [ "${var:(-1)}" = "?" ]
	then
		let "k = $(expr length $var) - 1"
		var=${var:0:$k}
		#echo $var
	fi

	if [ -v counter[$var] ]
	then
		let "k = ${counter[$var]} + 1"
		counter[$var]=$k
	else
		counter[$var]=1
	fi

done

for key in "${!counter[@]}" 
do 
    echo "$key ${counter[$key]}" >> sort.txt
done
sort -r -nk 2 sort.txt | head -n5
echo -n > sort.txt


