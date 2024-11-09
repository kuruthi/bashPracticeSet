#!/bin/bash

#Author: P. Venkateshwar
#Date: 31-05-2022
#Modified: 31-05-2022

#Description
#lets the user select between running the cruft_remover script and the folder_organizer script

#usage information
# ./toolkit.sh
cruft="Remove cruft"
org="or Organize folders"
PS3="What do you want to do : "
select choice in "$cruft" "$org"; do
	case "$choice" in
		"$cruft" ) ./cruft_remover.sh ;;
		"$org" ) ./folder_organiser.sh;;
		*) echo "Enter a valid option" ;;
	esac
	break
done

exit
