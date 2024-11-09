#!/bin/bash

#Author: P. Venkateshwar
#Date: 26-05-2022
#Modified: 26-05-2022

#Description
#Reads the input file and creates directories from its lines

while read -r dir; do
	mkdir "$dir"
done < "$1"

exit
