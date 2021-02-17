#!/bin/bash

#Variables
flag=0
location=0

read -p "Enter a whole number:" x;


for (( counter=2; counter<=x; counter++ ))
do
	flag=1
	if (( $x%$counter == 0 ))
	then
		if (( counter==2 ))
		then
			flag=1
		fi
		for (( base=2; base<counter; base++ ))
		do
			if (( $counter%$base==0 ))
			then
				flag=0
				break
			fi
		done
		if (( flag==1 ))
		then
			ans[$((location++))]=$counter
		fi
	fi
done

echo ${ans[@]}
