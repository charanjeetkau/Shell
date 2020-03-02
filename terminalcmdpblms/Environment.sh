#!bin/bash
# @Purpose : Identify files which modified in last 5 days and copy them To Backup Folder
# @Author : Hrishikesh Manohar Bodake
# @Version : 18.04.3 lts
# @Since : 28-02-2020 / Friday

for a in ` env | grep usersecret | awk '{print$0}' `
do
	if [[ $a != null ]]
	then
		echo "Value is already set "
		echo $a is the current value
	else
		read -p "Set the new value" b
		$a=$b
		export $a
	fi
done
