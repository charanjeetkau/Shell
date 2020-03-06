#/bin/bash -x

stakes=100
goal=200
betcount=0
wincount=0

while [[ $stakes -gt 0 && $stakes -lt $goal ]]
do
		((betcount++))

		r=$((RANDOM % 2))

						if [[ $r -eq 0 ]]
						then
							((stakes++))
							((wincount++))
						else
							((stakes--))
						fi
done
echo Gambler played $betcount times
echo Won $wincount times
echo Stakes '=' $stakes
