#!/bin/bash -x

function checkPrime(){
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
}

function checkPalindrome(){
temp=0
n1=$n
while [[ $n1 -ne 0 ]]
do
         rem=$(($n1%10))
         n1=$(($n1/10))
         temp=$(($temp*10+$rem))
done
temp2=$temp
if [[ $temp2 -eq $n ]]
then echo Palindrome
else echo Not a Palindrome
fi
}

read -p "Enter first number: " n
checkPrime
checkPalindrome

printf "\n"
