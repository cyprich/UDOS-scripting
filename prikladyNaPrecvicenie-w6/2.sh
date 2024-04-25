#!/bin/bash

if ! [ -z $1 ]; then
	if (( $1 < 50 || $1 > 100 )); then
		echo "Prameter je mimo intervalu <50; 100>"
		exit 1
	else
		for (( i=0; i < $1; i++ )); do
			echo $(( RANDOM % 10 + 1 )); done

	fi
else
	echo "Nie ze zadany parameter"
	exit 1
fi
