num=$1
arr1=(сто двести триста четыреста пятьсот шестьсот семьсот восемьсот девятьсот)
arr2=(десять двадцать тридцать сорок пятьдесят шестьдесят семьдесят весемьдесят девяносто)
arr3=(одна две три четыре пять шесть семь восемь девять)
arr4=(десять одиннадцать двенадцать тринадцать четырнадцать пятнадцать шеснадцать семнадцать восемнадцать девятнадцать)

let "k = $num / 100"
if [ $k -ne 0 ]
then
	echo -n ${arr1[k-1]}
	echo -n ' '
fi

let "num = $num % 100"

let "k = $num / 10"

if [ $k -ne 0 ]
then
    if [ $k -eq 1 ] 
    then
    	let "num = $num % 10"
		echo -n ${arr4[$num]}
		echo -n ' '
	else
		echo -n ${arr2[$k - 1]}
		echo -n ' '
		let "num = $num % 10"
		if [ $num -ne 0 ]
		then 
			echo -n ${arr3[$num - 1]}
			echo -n ' '
		fi
	fi
else
	let "num = $num % 10"
	if [ $num -ne 0 ]
	then 
		echo -n ${arr3[$num - 1]}
		echo -n ' '
	fi
fi
#echo ''