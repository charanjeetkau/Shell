#!/bin/bash -x

read -p "Think any one number between 0-100 in mind: " num

i=0
j=100

while [ $i -lt $j ]
do

mid=$(( ((i+j))/2 ))

			if [ $mid == $num ]
			then
  						echo "The guessed number is $mid"
			break
			else
  						read -p "if number is less than "$mid" press 1 otherwise press 2: " input

  									if [ $input -eq 1 ]
  									then
    								j=$((mid - 1))
  									fi

  									if [ $input -eq 2 ]
  									then
    								i=$((mid + 1))
  									fi
			fi
done


