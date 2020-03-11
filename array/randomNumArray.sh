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

largest=${random_num_array[0]}
secondLargest=${random_num_array[1]}

#array size?=no. of index pos= condition in forloop?

if [[ $largest -lt $secondLargest ]]
then
			largest=${random_num_array[1]}
			secondLargest=${random_num_array[0]}
fi
for((i=0; i<10; i++))
do
			if [[ $largest -gt ${random_num_array[i]} && $secondLargest -lt ${random_num_array[i]} ]]
			then
			secondLargest=${random_num_array[i]}
			elif [[ $largest -lt ${random_num_array[i]} ]]
			then
			secondLargest=$largest
			largest=${random_num_array[i]}
			fi
done
echo "$secondLargest is a Second Largest number in our array of random numbers"

smallest=${random_num_array[0]}
secondSmallest=${random_num_array[1]}
if [[ $smallest -gt $secondSmallest ]]
then
         smallest=${random_num_array[1]}
         secondSmallest=${random_num_array[0]}
fi
for((i=0; i<10; i++))
do
			if [[ $smallest -lt ${random_num_array[i]} && $secondSmallest -gt ${random_num_array[i]} ]]
         then
         secondSmallest=${random_num_array[i]}
         elif [[ $smallest -gt ${random_num_array[i]} ]]
         then
         secondSmallest=$smallest
         smallest=${random_num_array[i]}
         fi
done
echo "$secondSmallest is a Second Smallest number in our array of random numbers"
printf "\n"
