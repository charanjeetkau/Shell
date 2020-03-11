#!/bin/bash -x
counter=0
while [[ $counter -le 14 ]]
do
R=$(( $RANDOM % 18 -9 ))
array[((counter))]="$R"
((counter++))
done
echo "Array: "${array[@]}

for((i=0; i<${#array[@]}; i++))
do
			for((j=i+1; j<${#array[@]}; j++))
			do
						for((k=j+1; k<${#array[@]}; k++))
						do
									sum=$((${array[i]}+${array[j]}+${array[k]}))
									if [[ $sum -eq 0 ]]
									then
									echo "${array[i]} + ${array[j]} + ${array[k]} = 0"
									fi
						done
			done
done
