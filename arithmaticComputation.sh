#!/bin/bash -x
read -p "Enter 1st input : " a
read -p "Enter 2nd input : " b
read -p "Enter 3rd input : " c
w=`awk 'BEGIN{print '$a' + '$b' * '$c' }'`
x=`awk 'BEGIN{print '$a' * '$b' + '$c' }'`
y=`awk 'BEGIN{print '$c' + '$a' / '$b' }'`
echo "First expression output : $w"
echo "Second expression output : $x"
echo "Third expression output : " $y
