#!/bin/bash

echo "FG\\BG 40   41   42   43   44   45   46   47"

for ((i=30;i<=37;i++)); do
	echo -n " $i  "
	for ((j=40;j<=47;j++)); do
		echo -n -e "\033[0;"$i"m\033["$j"mBASH\033[0m "
	done
	echo ""
done
