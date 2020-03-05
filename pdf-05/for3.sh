#!/bin/bash -x
read -p "Enter number:" n

for(( i=1; i<=n; i++ ))
do
	count=0
				for(( j=2; j<n; j++ ))
				do
						if [[ $i%$j -eq 0 ]]
						then
							 ((count++))
						fi
            done
done


						if [[ $count -eq 0 ]]
						then
								echo Prime number
						else
								echo Not a Prime number
						fi

printf "\n"

