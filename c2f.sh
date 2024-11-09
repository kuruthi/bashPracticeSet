#!/bin/bash

#Author: Venkateshwar P
#Date: 26-05-2022
#Modified: 26-05-2022

#Description:
#A script that converts celsius to fahrenheit and fahrenheit

while getopts "f:c:" opt; do
	case "$opt" in
		f) cel=$(echo "scale=2; ($OPTARG - 32) * (5/9)" | bc ) && echo "$OPTARG""$opt" in Celsius is "$cel" ;;
		c) fah=$(echo "scale=2; ($OPTARG * (9/5)) + 32" | bc ) && echo "$OPTARG""$opt" in Fahrenheit is "$fah" ;;
		\?) echo "Enter a valid option -f or -c" ;;
	esac
done

exit

