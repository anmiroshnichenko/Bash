#!/bin/bash
echo "Введите любое число"
read a
echo "Введите еще одно число"
read b
if [[ a -ne b ]] && [[ a -gt b ]]; then
	let c=a-b 
elif [[ a -ne b ]] && [[ a -le b ]]; then
	let c=b-a
else 
	let c=a*b
fi;
echo $c
