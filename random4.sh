#!/bin/bash -x
R1=$(( $RANDOM % 89 + 10 ))
R2=$(( $RANDOM % 89 + 10 ))
R3=$(( $RANDOM % 89 + 10 ))
R4=$(( $RANDOM % 89 + 10 ))
R5=$(( $RANDOM % 89 + 10 ))

sum=$(( $R1 + $R2 + $R3 + $R4 + $R5 ))
echo "$R1 + $R2 + $R3 + $R4 + $R5 = " $sum

avg=$(( $sum / 5 ))
echo "Average= " $avg

