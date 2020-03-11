#!/bin/bash -x
counter=0
for((n=1; n<=100; n++))
do
array[((counter))]="$n"
((counter++))
done
counter2=0
for((i=0; i<${#array[@]}; i++))
do
			rem=$((${array[i]}%11))
						if [[ $rem -eq 0 ]]
						then
						array2[((counter2))]="${array[i]}"
						((counter2++))
						fi
done
echo "Array of repeated numbers: "${array2[@]}
