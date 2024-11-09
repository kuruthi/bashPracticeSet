#!/bin/bash

#Author: P. Venkateshwar,
#Date: 29-05-2022,
#Modified: 29-05-2022

#set -x
[ -f "$1" ] && readarray -t url < "$1" #Reading in the urls

for url in "${url[@]}"; do
	name=$( echo "$url" | cut -d . -f 2 )
	curl -I "$url" -o "$name".txt
done

exit
