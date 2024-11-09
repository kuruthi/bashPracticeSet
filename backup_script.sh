#!/bin/bash

#Author: P. Venkateshwar
#Date created: 07-04-2022
#Last modified:04-05-2022

#Description:
#A script for the udemy bash course that backs up my home directory

#Usage:
# ./backup_script.sh [FOLDER TO BE BACKED UP] [BACK UP LOCATION]

set -e
#set -x

echo "Hello ${USER^}" # Parameter expansion plus "^" to make the first letter uppercase
echo "Commencing backup..."

[[ -e $1 && ( -d $2 ) ]] && backupthis="$1" && backuphere="$2"
if [ "$(echo "${backupthis}" | grep -e  "/" )" ]
then
	partname=$(echo "$backupthis" | tr -d "~" | rev | cut -d '/' -f 1 | rev ) #works
	cd "$backuphere" && tar -cvf backup_of_"$partname"_"$(date +%d-%m-%Y_%H-%M-%S)".tar "$backupthis" 2>/dev/null ##Change directory to backuploc and create backup
	echo "Backup created successfully at $(pwd)"
else
	time="$(date +%d-%m-%Y_%H-%M-%S)"
	tar -cvf backup_of_"$backupthis"_"$time".tar "$backupthis" 2>/dev/null
	## The time in the filename might be a few seconds off from the time the backup is created,
	## Unelegant but helps move the file to the target location
	mv backup_of_"$backupthis"_"$time".tar "$backuphere"
	echo "Backup completed successfully at ${backuphere}"
fi

exit

