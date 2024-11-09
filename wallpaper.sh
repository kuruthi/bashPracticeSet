#!/bin/bash

#Author: Venkateshwar P,
#Date: 24-05-2022,
#Modified: 24-05-2022,

#Description
#A script that changes my desktop wallpaper periodically
set -x
[ -d "$1" ] && dir="$1" || dir="$HOME/Pictures/nord-wallpapers" #Either you give the directory as input or edit in here

ls "$dir" > "$HOME/.wallpaper_list.txt"
readarray wallpaper < "$HOME/.wallpaper_list.txt"
#"${wallpaper[1]}"
for i in ${!wallpaper[@]}; do
	if [ ! -d "$i" ]
	then
		gsettings set org.gnome.desktop.background picture-uri file://"$dir"/${wallpaper[i]}
	fi
i=$(( i+1 ))
sleep 27.699m
done
exit
