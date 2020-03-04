#!/bin/bash -x

read -p "Enter number (ex: 1,10,1000,10000,etc): " num

if [[ num -eq 1 ]]
then echo unit
elif [[ num -eq 10 ]]
then echo ten
elif [[ num -eq 100 ]]
then echo hundred
elif [[ num -eq 1000 ]]
then echo thousand
elif [[ num -eq 10000 ]]
then echo ten thousand
elif [[ num -eq 100000 ]]
then echo lakh
elif [[ num -eq 1000000 ]]
then echo ten lakh
elif [[ num -eq 10000000 ]]
then echo crore
elif [[ num -eq 100000000 ]]
then echo ten crore
elif [[ num -eq 1000000000 ]]
then echo hundred crore
else echo number is out of range
fi





