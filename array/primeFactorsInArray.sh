#!/bin/bash -x

read -p "Enter the number: " n

echo -n Prime factors of $n': '

counter=0

for(( i=1; i<=n; i++ ))
do

			if [[ $n%$i -eq 0 ]]
			then count=0
					for(( j=2; j<$i; j++ ))
					do
                  							if [[ $i%$j -eq 0 ]]
                  							then
                      								((count++))
                  							fi
					done

								if [[ $count -eq 0 ]]
								then
     									array[((counter))]="$i"
									   ((counter++))
								fi
			fi
done
echo -n ${array[@]}

printf "\n"
