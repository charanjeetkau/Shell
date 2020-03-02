#!/bin/bash -x

# @Purpose : Change File Name with Date
# @Author : Hrishikesh Manohar Bodake
# @Version : 18.04.3 lts
# @Since : 27-02-2020 / Thursday

# Here We are going to check number of files present in the current Directory
# Get That file names and print it

for files in `ls *.log.1`
do
        #removing names of files without extension
        filename=`echo $files | awk -F . '{print $1}'`
        now=$(date +"%d%m%Y")
	#rename file with new name
	cp $files $filename.$now.log.1
done
