#!/bin/bash -x

echo "Give an input within the range (Freezing Point 0 °C / 32 °F and the Boiling Point of Water 100 °C / 212 °F) for Conversion"
echo "1. C to F "
echo "2. F to C"

read -p "Enter your choice (in number): " choice
read -p "Enter value: " value


function conversionF() {
                     degC=$value
                     degF=`expr "scale=4;($degC*9/5) + 32" | bc -l`
                      echo $degF F
                        }
function conversionC() {
                     degF=$value
                     degC=`expr "scale=4;($degF - 32)*5/9" | bc -l`
                      echo $degC C
                        }

if [[ $choice -eq 1 && $value -ge 32 && $value -le 212 ]]
then
			( conversionF $value )
elif [[ $choice -eq 2 && $value -ge 0 && $value -le 100 ]]
then
			( conversionC $value )
else echo Enter the number from a given range
fi

