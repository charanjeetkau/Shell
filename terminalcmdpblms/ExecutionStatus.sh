#!bin/bash -x

# @Purpose : Identify files which modified in last 5 days and copy them To Backup Folder
# @Author : Hrishikesh Manohar Bodake
# @Version : 18.04.3 lts
# @Since : 28-02-2020 / Friday
echo "Will accept only hello or ls respectivly
"
read -p "Enter the command: " value
if [[ $value == hello ]]
then
	$value
	echo "Command Executed Succesfully "
else
	echo "Command is not Executed"
fi
read -p "Enter the command: " value1
if [[ $value1 == ls ]]
then
   $value1
   echo "Command Executed Succesfully "
else
   echo "Command is not Executed"
fi


