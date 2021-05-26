#!/bin/bash -x
declare -A dict
declare -a arr
declare -a array
read -p "Enter 1st input : " a
read -p "Enter 2nd input : " b
read -p "Enter 3rd input : " c
w=`awk 'BEGIN{print '$a' + '$b' * '$c' }'`
x=`awk 'BEGIN{print '$a' * '$b' + '$c' }'`
y=`awk 'BEGIN{print '$c' + '$a' / '$b' }'`
z=`awk 'BEGIN{print '$a' % '$b' + '$c' }'`
echo "First expression output : $w"
echo "Second expression output : $x"
echo "Third expression output : $y"
echo "Fourth expression output : $z"
i=0
dict[$i]=$w
i=$(($i+1))
dict[$i]=$x
i=$(($i+1))
dict[$i]=$y
i=$(($i+1))
dict[$i]=$z
echo "Values in dictionary : ${dict[@]}"
for((i=0;i<=3;i++))
do
	arr[$i]=${dict[$i]}
done
echo "Values in array : ${arr[@]}"
array=($(echo ${arr[@]} | tr " " "\n" | sort -nr ))
echo "Array in descending order : ${array[@]}"
