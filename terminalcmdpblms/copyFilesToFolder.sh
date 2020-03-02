#!/bin/bash -x

# @Purpose : Move Files To Folder
# @Author : Hrishikesh M Bodake
# @Version : 18.04.3 lts
# @Since : 27-02-2020 / Thursday

# Here We are going to check number of files present in the current Directory
# Get That file names and print it

for files in `ls *.txt`
do
	#removing names of files without extension
	foldername=`echo $files | awk -F . '{print $1}'`

	#checking if directory already there then remove that
	if [ -d $foldername ]
	then
		rm -r $foldername
	fi
	echo
   #making directory of with that names
	mkdir $foldername
	#printing that names
	cp $files $foldername
	echo Directory Created With Foldername $foldername
	echo "& copied that file to Folder"
done
