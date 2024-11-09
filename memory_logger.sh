#!/bin/bash

#Author: Venkateshwar P
#Date: 24-05-2022
#Modified: 24-05-2022

if [ -d "$HOME/performance" ]; then
	echo "The folder $HOME/performance exists"
else
	mkdir "$HOME/performance" && echo "The folder $HOME/performance created"
fi

## Append free command stdout to memory.log
echo "Appending memory.log..."
sleep 0.5
free >> "$HOME/performance/memory.log"
echo "Done"

exit
