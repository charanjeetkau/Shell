#!/bin/bash -x

R=$(( $RANDOM % 10 ))

if [[ R -le 5 ]]
then
		echo "head"
else
		echo "tail"
fi
