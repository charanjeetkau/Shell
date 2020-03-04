#!/bin/bash -x

read -p "Enter number (ex: 1,10,1000,10000,etc): " num

case $num in
					1) echo unit
					;;
					10) echo ten
					;;
				   100) echo hundred
					;;
					1000) echo thousand
					;;
					10000) echo ten thousand
					;;
				   100000) echo lakh
					;;
					1000000) echo ten lakh
					;;
					10000000) echo crore
					;;
					100000000) echo ten crore
					;;
					1000000000) echo hundred crore
					;;
					*) echo number is out of range
					;;
esac
