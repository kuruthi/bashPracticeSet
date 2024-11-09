#!/bin/bash

#Author: P. Venkateshwar
#Date: 26-05-2022
#Modified: 26-05-2022

#Description
#gets minutes and seconds as arguments, counts down from there until it reaches 1 and Time's up!!!
## Getting options and arguments + calculating the total seconds
tot_sec="0" #initialized so we can get -m or -s first in the cmd

while getopts "m:s:" opt; do
	case "$opt" in
		m) tot_sec=$(( "$tot_sec" + ( "$OPTARG" * 60 ) )) ;;
		s) tot_sec=$(( "$OPTARG" + "$tot_sec" )) ;;
		\?) echo "?" ;; #We use ? instead of the catch all * because getopts assigns ? for unusual values
	esac
done

## Creating the counter
while [[ $tot_sec != 0 ]]; do
	if [ $tot_sec != 1 ];
	then
		echo "$tot_sec seconds left"
	else 
		echo "$tot_sec  second left"
	fi
	sleep 1s
	tot_sec=$(( $tot_sec - 1 ))
done
echo "Time's up!!!"
exit
