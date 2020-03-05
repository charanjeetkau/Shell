#!/bin/bash -x

read -p "Enter number: " n

if [[ $n -gt 8 ]]
then
         echo result value is beyond the range of 256
else

			echo -n Values of Powers of 2 starting from 2^$n are ' '

			res=0
			while [[ $res -lt 256 ]]
			do
			res=$((2**$n))
			echo -n $res' '
			((n++))
			done
fi
printf "\n"
