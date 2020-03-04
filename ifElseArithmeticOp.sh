#!/bin/bash -x

read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c

v1=$(( $a + $b * $c ))
v2=$(( $c + $a / $b ))
v3=$(( $a % $b + $c ))
v4=$(( $a * $b + $c ))

echo calculated values are $v1 , $v2 , $v3 , $v4

if [[ ($v1 -ge $v2) && ($v1 -ge $v3) && ($v1 -ge $v4) ]]
then echo $v1 is maximum
elif [[ ($v2 -ge $v1) && ($v2 -ge $v3) && ($v2 -ge $v4) ]]
then echo $v2 is maximum
elif [[ ($v3 -ge $v1) && ($v3 -ge $v2) && ($v3 -ge $v4) ]]
then echo $v3 is maximum
else echo $v4 is maximum
fi

if [[ ($v1 -le $v2) && ($v1 -le $v3) && ($v1 -le $v4) ]]
then echo $v1 is minimum
elif [[ ($v2 -le $v1) && ($v2 -le $v3) && ($v2 -le $v4) ]]
then echo $v2 is minimum
elif [[ ($v3 -le $v1) && ($v3 -le $v2) && ($v3 -le $v4) ]]
then echo $v3 is minimum
else echo $v4 is minimum
fi

