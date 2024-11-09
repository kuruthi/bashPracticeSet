#!/bin/bash

#Author: P.Venkateshwar,
#Date:15-05-2022,
#Modified:15-05-2022,

#Description:
#A basic calculator, first argument is the operation to be done, following arguments are operands

#Works for + and -

[ "$1" == "+" ] || [ "$1" == "-" ] && op="$1" #Operator
answer=$((${2:-0} $op ${3:-0} $op ${4:-0} $op ${5:-0} $op ${6:-0} $op ${7:-0} $op ${8:-0} $op ${9:-0} $op ${10:-0}))
echo "$answer"
