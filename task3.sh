#!/bin/bash
#time=$(date +"%H:%M")
#echo $time

months=(f января февраля марта апреля мая июня июля августа сентября октября ноября декабря)

if [ "$1" = "" ]
then
	time=$(date +"%Y-%m-%d")
else
	time=$1
fi

#echo "$time"

year=${time:0:4}
mth=${time:5:2}
day=${time:8}


bash task1d.sh $day

if [ $mth -gt 9 ]
then
	echo -n "${months[$mth]} "
else
	let "k = $mth % 10"
	echo -n "${months[$k]} "
fi
echo "$year-го года"

