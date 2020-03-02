#!/bin/bash -x
R1=$(( $RANDOM % 6 + 1 ))
R2=$(( $RANDOM % 6 + 1 ))
R=$(( $R1 + $R2 ))
echo "$R1 + $R2 = " $R

