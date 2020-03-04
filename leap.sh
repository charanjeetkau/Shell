#!/bin/bash -x

read -p "Enter the year in digits: " year

if [[ (year%4 -eq 0) && (year -ge 1000) && (year -le 9999) ]]
then
				echo leap year
else
				echo not a leap year
fi


