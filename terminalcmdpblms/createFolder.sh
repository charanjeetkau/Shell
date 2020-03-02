#!bin/bash -x
echo "Enter Folder Name To create.."
read folder

for folders in `ls -F /`
do
	if [[ -d $folder ]]
	then
		echo "Folder Exist Already.."
		break
	else
		mkdir $folder
		echo "Folder Created with name $folder"
		break
	fi
done

