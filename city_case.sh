#!/bin/bash

#Author: Venkateshwar P
#Date: 24-05-2022
#Modified: 24-05-2022
var="The city is in "
PS3="Select the city you want to go to: "
select city in Tokyo London "Los Angeles" Moscow Dubai Manchester "New York" Paris Bangalore Johannesburg Istanbul Milan "Abu dhabi" Pune Nairobi Berlin Karachi
do
	case "$city" in
		Tokyo) echo "$var Japan";;
		London | Manchester) echo "$var United Kingdom";;
		"Los Angeles" | "New York") echo "$var America";;
		Moscow) echo "$var Russia";;
		Dubai | "Abu dhabi") echo "$var UAE";;
		Paris) echo "$var France";;
		Bangalore | Pune) echo "$var India";;
		Johannesburg) echo "$var South africa";;
		Istanbul) echo "$var Turkey";;
		Milan) echo "$var Italy";;
		Nairobi) echo "$var Kenya";;
		Berlin) echo "$var Germany";;
		Karachi) echo "$var Pakistan";;
		*) echo "Select a city"
	esac
	break
done
exit
