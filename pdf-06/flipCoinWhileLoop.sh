#!/bin/bash -x
headCount=0
tailCount=0
while [[ $headCount -lt 11 && $tailCount -lt 11 ]]
do
	R=$(( $RANDOM % 2 ))
			if [[ $R -eq 0 ]]
			then
				echo "head"
				((headCount++))
			else
				echo "tail"
				((tailCount++))
			fi
done
			if [[ $headCount -gt $tailCount ]]
			then
				echo "**HEAD WINS**"
			else
				echo "**TAIL WINS**"
			fi

