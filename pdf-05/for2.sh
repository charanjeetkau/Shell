#!/bin/bash -x
read -p "Enter number n=" n
temp=0
echo -n "0 "
for(( i=1; i<=n; i++ ))
do
      echo -n "+ 1/$i "
		res=`expr "$temp + 1/$i" | bc -l`
      temp=$res
done
echo = $res

printf "\n"



