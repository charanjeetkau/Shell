#!/bin/bash -x
counter=0
R=$(( $RANDOM % 899 + 100 ))
random_num_array[((counter))]="$R"
while [[ counter -lt 10 ]]
do
R=$(( $RANDOM % 899 + 100 ))
random_num_array[((counter++))]="$R"
done
echo ${random_num_array[@]}

for((i=0; i<${#random_num_array[@]}; i++))
do
			for((j=i+1; j<${#random_num_array[@]}; j++))
			do
						if [[ ${random_num_array[i]} -gt ${random_num_array[j]} ]]
						then temp=${random_num_array[i]}
							  random_num_array[i]=${random_num_array[j]}
						     random_num_array[j]=$temp
						fi
			done
done
indexPos=$((${#random_num_array[@]}-2)) #Second Largest Element = at last second index pos = at index pos 8
echo "The second smallest element in our array of random numbers is: " ${random_num_array[1]}
echo "And the second largest element in our array of random numbers is: " ${random_num_array[indexPos]}

