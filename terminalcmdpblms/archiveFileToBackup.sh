#!/bin/bash -x

# @Purpose : Identify files which modified in last 5 days and copy them To Backup Folder
# @Author : Hrishikesh Manohar Bodake
# @Version : 18.04.3 lts
# @Since : 27-02-2020 / Thursday

# Here We are going to check number of files present in the current Directory
# Get That file names and print it

# find files that are accessed within 5 days 
for files in `find /var/log -mtime -5 -type f -print0 | xargs -0 ls -al | sort -r +5`
do
	cp $files Backup/
	echo Directory Created With Folder Backup
	echo "& copied that files to Backup Folder"
done
