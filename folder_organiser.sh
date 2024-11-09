#!/bin/bash

#Author: P. Venkateshwar
#Date: 31-05-2022
#Modified: 31-05-2022

#Description
#organise files into folders based on their extensions

#set -x
read -r -p "Directory path you want organized: " dir
readarray -t files < <(ls "$dir")
folders=(images documents spreadsheets scripts archives presentations audio video)
for i in "${folders[@]}"; do
	[ ! -d "$dir"/"$i" ] && mkdir "$dir"/"$i"
done
#echo ${files[@]}
for file in "${files[@]}"; do
	case "$file" in
		*.jpg | *.jpeg | *.png ) mv -t "$dir"/${folders[0]} "$dir"/"$file" ;;
		*.doc | *.docx | *.txt | *.pdf ) mv -t "$dir"/${folders[1]} "$dir"/"$file" ;;
		*.xls | *.xlsx | *.csv ) mv -t "$dir"/${folders[2]} "$dir"/"$file" ;;
		*.sh ) mv -t "$dir"/${folders[3]} "$dir"/"$file" ;;
		*.zip | *.tar* ) mv -t "$dir"/${folders[4]} "$dir"/"$file" ;;
		*.ppt* ) mv -t "$dir"/${folders[5]} "$dir"/"$file" ;;
		*.mp3 ) mv -t "$dir"/${folders[6]} "$dir"/"$file" ;;
		*.mp4 ) mv -t "$dir"/${folders[7]} "$dir"/"$file" ;;
		*);;	
	esac
done

exit
