#!bin/bash -x

valueOne=$(((RANDOM%900)+99))
valueTwo=$(((RANDOM%900)+99))
valueThree=$(((RANDOM%900)+99))
valueFour=$(((RANDOM%900)+99))
valueFive=$(((RANDOM%900)+99))

echo randomly generated values: $valueOne $valueTwo $valueThree $valueFour $valueFive
if [[ $valueOne -gt $valueTwo && $valueOne -gt $valueThree && $valueOne -gt $valuefour && $valueOne -gt $valueFive ]]
then
	echo $valueOne is greater
fi
if [[ $valueTwo -gt $valueOne && $valueTwo -gt $valueThree && $valueTwo -gt $valueFour && $valueTwo -gt $valueFive ]]
then
	echo $valueTwo is greater
fi
if [[ $valueThree -gt $valueOne && $valueThree -gt $valueTwo && $valueThree -gt $valueFour && $valueThree -gt $valueFive ]]
then
	echo $valueThree is greater
fi
if [[ $valueFour -gt $valueOne && $valueFour -gt $valueTwo && $valueFour -gt $valueThree && $valueFour -gt $valueThree && $valueFour -gt $valueFive ]]
then
	echo $valueFour is greater
fi
if [[ $valueFive -gt $valueOne && $valueFive -gt $valueTwo && $valueFive -gt $valueThree && $valueFive -gt $valueFour ]]
then 
	echo $valueFive is greater
fi

if [[ $valueOne -lt $valueTwo && $valueOne -lt $valueThree && $valueOne -lt $valuefour && $valueOne -lt $valueFive ]]
then
   echo $valueOne is smaller
fi
if [[ $valueTwo -lt $valueOne && $valueTwo -lt $valueThree && $valueTwo -lt $valueFour && $valueTwo -lt $valueFive ]]
then
   echo $valueTwo is smaller
fi
if [[ $valueThree -lt $valueOne && $valueThree -lt $valueTwo && $valueThree -lt $valueFour && $valueThree -lt $valueFive ]]
then
   echo $valueThree is smaller
fi
if [[ $valueFour -lt $valueOne && $valueFour -lt $valueTwo && $valueFour -lt $valueThree && $valueFour -lt $valueThree && $valueFour ]]
then
   echo $valueFour is smaller
fi
if [[ $valueFive -lt $valueOne && $valueFive -lt $valueTwo && $valueFive -lt $valueThree && $valueFive -lt $valueFour ]]
then 
   echo $valueFive is smaller
fi

