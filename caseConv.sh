#!/bin/bash -x

echo "1. feet to inch "
echo "2. inch to feet "
echo "3. feet to meter "
echo "4. meter to feet "

read -p "Enter your choice (in number): " choice
read -p "Enter value: " value


case $choice in
					"1")
							inch=`expr "$(($value*12))" | bc -l`
							 echo $inch inch
					;;
					"2")
							feet=`expr "$(($value/12))" | bc -l`
							 echo $feet ft
					;;
				   "3")
							meter=`expr "$(($value*10000/3048))" | bc -l`
                      echo $meter meter
					;;
					"4")
							feet=`expr "$(($value*3048/10000))" | bc -l`
                      echo $feet ft
					;;
					*) echo Enter valid choice
					;;
esac
