#!bin/bash -x

read -p "Enter month: " gvm
read -p "Enter date: " gvd

if [[ ($gvd -ge 20) && ($gvd -le 31) && ($gvm == "march") ]]
then
            echo true


elif [[ ($gvd -ge 1) && ($gvd -le 30) && ($gvm == "april") ]]
then
            echo true


elif [[ ($gvd -ge 1) && ($gvd -le 31) && ($gvm == "may") ]]
then
            echo true


elif [[ ($gvd -ge 1) && ($gvd -le 20) && ($gvm == "june") ]]
then
            echo true

else  echo false
fi

