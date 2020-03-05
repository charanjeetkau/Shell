#!/bin/bash -x

read -p "Enter number to find its factorial: " n
echo -n $n '! - 1'
count=1
for(( i=1; i<=$n; i++ ))
do
			echo -n ' * '$i
			count=$(($count*$i))
done
echo ' = '$count
printf "\n"
