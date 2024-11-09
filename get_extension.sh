#!/bin/bash

#Author		:P.Venkateshwar,
#Date Created	:18-05-2022,
#Date modified	:18-05-2022,

IFS="," ##Needless
read -r -p "What is your name? " name
read -r -p "What is your surname/family name? " surname
sleep 0.5 
PS3="What type of phone do you use?  "
select phone_type in "headset" "handheld";
do
	echo "So you use a $phone_type"
	break
done
PS3="What is your department: "
select dept in "finance" "sales" "customer service" "engineering";
do
	echo "Good, $name of $dept"
	break
done
echo "Note : The extension number and access code that you provide must exactly be 4 digits long."
read -N 4 -p "What is your extension number? " ext_number
echo
read -N 4 -s -p "What access code would you like to use when dialing in? " access_code
echo
echo "Thank you, $name $surname"
echo "Your extension number $ext_number, and access code xxxx has been recorded!"

touch /etc/extensions.csv
echo "$name", "$surname", "$phone_type", "$dept", "$ext_number", "$access_code" >> /etc/extensions.csv
exit
