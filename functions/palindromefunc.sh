#!/bin/bash -x

function checkPalindrome(){
temp=0
n=$n1

while [[ $n -ne 0 ]]
do
         rem=$(($n%10))
         n=$(($n/10))
         temp=$(($temp*10+$rem))
done
}


read -p "Enter first number: " n1
read -p "Enter second number: " n2

checkPalindrome

if [[ $temp -eq $n2 ]]
then echo Given numbers are palindrome
else echo Given numbers are not palindrome
fi
