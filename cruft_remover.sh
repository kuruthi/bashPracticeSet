#!/bin/bash

#Author: Venkateshwar P
#Date: 30-05-2022
#Modified: 30-05-2022

#Description
#Removes old unused files

#set -x
read -r -p "Remove cruft from directory: " dir

readarray cruft < <(find "$dir" -maxdepth 1 -mtime +10 -type f)

echo "${cruft[@]}"
for cruft_file in "${cruft[@]}"; do
	rm -i $cruft_file
done

exit
