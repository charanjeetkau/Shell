#!/bin/bash -x
read -p "Enter first number:" n1
read -p "Enter second number:" n2

echo -n Prime numbers 'in' given range are' : '

for(( i=$n1; i<=$n2; i++ ))
do
   count=0
            for(( j=2; j<$i; j++ ))
            do
                  if [[ $i%$j -eq 0 ]]
                  then
                      ((count++))
                  fi
            done



                  if [[ $count -eq 0 ]]
                  then
                        echo -n $i' '
                  fi
done
printf "\n"

