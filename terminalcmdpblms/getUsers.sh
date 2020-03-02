#!/bin/bash -x

# @ Purpose : Get User whose Useruserid Are greater then 1000
# @ Author : Hrishikesh Manohar Bodake
# @ Since : 27-02-2020 / Thursday

#show all the users using /etc/passwd

for userid in ` awk -F: '{print $1,$3}' /etc/passwd`
do
	echo $userid
	if [[ $3 -ge 1000 ]]
	then
		echo `awk -F ':' ' {print "Valid User" :"$1","$3"}'  /etc/passwd`
	fi
done
