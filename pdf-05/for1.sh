#!/bin/bash -x
read -p "Enter number n=" n
for(( i=1; i<=n; i++ ))
do
		res=$((2**$i))
		echo -n "2^$i=$res "
done
printf "\n"
