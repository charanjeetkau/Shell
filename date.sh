#!bin/bash -x
read -p "Enter the Month: " m
read -p "Enter the Day: " d
read -p "Enter the Year: " y


y0=`expr "$((y-(14 - m)/12))" | bc -l`
x=`expr "$((y0 + y0 / 4 - y0 / 100 + y0 / 400))" | bc -l `
m0=`expr "$((m + 12 * (( 14 - m ) / 12) - 2))" | bc -l `
d0=`expr " $(((d + x + 31 * m0 / 12)%7 ))" | bc -l`


if [[ $d0 -eq 0 ]]
then
echo Day On Entered Date is Sunday
elif [[ $d0 -eq 1 ]]
then
echo Day On Entered Date is Monday
elif [[ $d0 -eq 2 ]]
then
  echo Day On Entered Date is Tuesday
elif [[ $d0 -eq 3 ]]
then
  echo Day On Entered Date is Wednesday
elif [[ $d0 -eq 4 ]]
then
  echo Day On Entered Date is Thursday
elif [[ $d0 -eq 5 ]]
then
  echo Day On Entered Date is Friday
else
  echo Day On Entered Date is Saturday
fi
