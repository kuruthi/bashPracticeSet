#!/bin/bash

#Author: P. Venkateshwar
#Date:06-05-2022

x=2
y=3
echo "$(($x*$y))"
echo "$(($x**$y))" #exponentiation
echo "$(($y%$x))" #Modulo operator
echo -n "$(echo "scale=2; 5/2" | bc )"
exit

