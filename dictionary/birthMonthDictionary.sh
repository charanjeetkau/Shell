#!/bin/bash -x

declare -A dictionary
R=0
function randomMonth() {
R=$((RANDOM%23 +1))
}

month1count=0
month2count=0
month3count=0
month4count=0
month5count=0
month6count=0
month7count=0
month8count=0
month9count=0
month10count=0
month11count=0
month12count=0

dictionary=( ["jan"]=0 ["feb"]=0 ["mar"]=0 ["apr"]=0 ["may"]=0 ["jun"]=0 ["jul"]=0 ["aug"]=0 ["sep"]=0 ["oct"]=0 ["nov"]=0 ["dec"]=0 )

#sum=$(($month1count+$month2count+$month3count+$month4count+$month5count+$month6count+$month7count+$month8count+$month9count+$month10count+$month11count+$month12count))

while [[ $sum -lt 50 ]]
do

sum=$(($month1count+$month2count+$month3count+$month4count+$month5count+$month6count+$month7count+$month8count+$month9count+$month10count+$month11count+$month12count))


			for((l=1; l<=2; l++))
			do
			randomMonth
			R1=$(($R/$l))

						if [[ R1 -eq 1 ]]
						then
						((month1count++))
						dictionary[jan]=$month1count

						elif [[ R1 -eq 2 ]]
                  then
                  ((month2count++))
                  dictionary[feb]=$month2count

                  elif [[ R1 -eq 3 ]]
                  then
                  ((month3count++))
                  dictionary[mar]=$month3count

                  elif [[ R1 -eq 4 ]]
                  then
                  ((month4count++))
                  dictionary[apr]=$month4count

                  elif [[ R1 -eq 5 ]]
                  then
                  ((month5count++))
                  dictionary[may]=$month5count

                  elif [[ R1 -eq 6 ]]
                  then
                  ((month6count++))
                  dictionary[jun]=$month6count

                  elif [[ R1 -eq 7 ]]
                  then
                  ((month7count++))
                  dictionary[jul]=$month7count

                  elif [[ R1 -eq 8 ]]
                  then
                  ((month8count++))
                  dictionary[aug]=$month8count

                  elif [[ R1 -eq 9 ]]
                  then
                  ((month9count++))
                  dictionary[sep]=$month9count

                  elif [[ R1 -eq 10 ]]
                  then
                  ((month10count++))
                  dictionary[oct]=$month10count

                  elif [[ R1 -eq 11 ]]
                  then
                  ((month11count++))
                  dictionary[nov]=$month11count

                  elif [[ R1 -eq 12 ]]
                  then
                  ((month12count++))
                  dictionary[dec]=$month12count

						fi
			done
done

echo "Number of individuals having birthday in same month in years 92 & 93: "
echo ${!dictionary[@]} ' : ' ${dictionary[@]}
