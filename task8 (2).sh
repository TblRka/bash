#!/bin/bash
if [ $1 = "-l" ]
then
	long=$2
	alphabet=$4
else
	long=$4
	alphabet=$2
fi

pass=""
i=0
len=$(expr length $alphabet)
#echo $len

while [ $i -lt $long ] 
do
	k=$(( $RANDOM % $len))
	pass="$pass${alphabet:k:1}"
	let "i = $i + 1"
	#echo $i
done

echo $pass
