#!/bin/bash
#time=$(date +"%H:%M")
#echo $time

if [ "$1" = "" ]
then
	time=$(date +"%H:%M")
else
	time=$1
fi

hr=${time:0:2}
min=${time:3}

if [ "$hr" = "00" ]
then
	echo -n "ноль часов "
else
	bash task1t.sh $hr

	if [ $hr -eq 1 ]
	then
		echo -n "час "
	elif [ $hr -gt 1 ] && [ $hr -lt 5 ] || [ $hr -gt 21 ] && [ $hr -lt 24 ]
	then
		echo -n "часa "
	else
		echo -n "часов "
	fi
fi

if [ "$min" = "00" ]
then
	echo "ноль минут "
else
	bash task1t.sh $min
	let "k = $min % 10"

	if [ $k -eq 1 ]
	then
		echo "минута "
	elif [ $k -gt 1 ] && [ $k -lt 5 ] && [ $min -ne 12 ] && [ $min -ne 13 ] && [ $min -ne 14 ]
	then
		echo "минуты "
	else
		echo "минут "
	fi
fi





