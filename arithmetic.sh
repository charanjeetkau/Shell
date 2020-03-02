#!/bin/bash -x
read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c
m=$(( $a + $b * $c ))
n=$(( $c + $a / $b ))
o=$(( $a % $b + $c ))
p=$(( $a * $b + $c ))
echo "$a + $b * $c = " $m
echo "$c + $a / $b = " $n
echo "$a % $b + $c = " $o
echo "$a * $b + $c = " $p


