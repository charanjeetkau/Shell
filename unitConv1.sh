#!/bin/bash -x
read -p "inches = " in
ft=`expr "$in/12" | bc -l` 
echo "$in in = " $ft "ft"

R=$((60*40))
M=`expr "$R/3.28" | bc -l`
echo "Rectangular Plot of 60X40 feet in meters = "$M" sq.meters"  

tsqm=$((25*$R))
A=`expr "$tsqm*0.000247105" | bc -l`
echo "Total Area of 25 such plots in acres = "$A" acres"  
