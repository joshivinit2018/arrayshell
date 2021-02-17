#!/bin/bash

cor=10

function ran(){
	local index=0
	local unSortAr
	while (( index<$1 ))
	do
		val=$((RANDOM%1000))
		if (( val>99 ))
		then
		unSortAr[((index++))]=$val
		fi
	done
	echo ${unSortAr[@]}
}

result="$(ran $cor )" 
echo "original" $result

function give_small(){
	local unSortAr=("$@")
	local number=1
	local small=${unSortAr[0]}
	local length=${#unSortAr[@]}
	while (( number<length ))
	do
		if (( $small>${unSortAr[number]} ))
		then
			small=${unSortAr[number]}
		fi
		((number++))
	done
	echo $small
}

result1="$( give_small ${result[@]} )"
echo smallest $result1

function small_two(){
	tmp=("$@")
	local x="$( give_small ${tmp[@]} )"
	local ans=("${tmp[@]/$x}")
	#ans="$( give_small $ans )" //be careful of assigment to array agains
	local result="$( give_small ${ans[@]} )" 
	echo ${result[@]}
}

result2="$( small_two ${result[@]} )"
echo "2nd smallest" $result2


function ascending_sorter(){
	local unSortAr=("$@")
	local number=0
	local length=${#unSortAr[@]}
	local c 
	while (( number<length ))
	do
		for ((c=0; c<length-1;c++))
		do
			if (( ${unSortAr[((c))]}>${unSortAr[((c+1))]} ))
			then
				local tmp="${unSortAr[((c))]}"
				unSortAr[((c))]="${unSortAr[((c+1))]}"
				unSortAr[((c+1))]=$tmp
			fi
		done
		((number++))
	done
	echo ${unSortAr[@]}
}

result3="$( ascending_sorter ${result[@]} )"
echo "sorted" $result3;
