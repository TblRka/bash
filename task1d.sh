num=$1
arr2=(десять двадцать тридцать сорок пятьдесят шестьдесят семьдесят весемьдесят девяносто)
arr3=(первое второе третье четвертое пятое шестое седьмое восьмое девятое)
arr4=(десятое одиннадцатое двенадцатое тринадцатое четырнадцатое пятнадцатое шеснадцатое семнадцатое восемнадцатое девятнадцатое)

if [ $num -eq 20 ]
then
	echo -n "двадцатое "
elif [ $num -eq 30 ]
then
	echo -n "тридцатое "
else
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
fi