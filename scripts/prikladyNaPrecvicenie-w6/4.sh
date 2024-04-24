#!/bin/bash

pocet_sestiek=0

koniec() {
	echo "Pocet padnuti 6: $pocet_sestiek"
	exit 0
}

trap 'koniec' SIGINT

while true; do
	cislo=$(( RANDOM % 6 + 1 ))
	echo $cislo
	if [[ $cislo -eq 6 ]]; then
		((pocet_sestiek++)); fi
	sleep 1
done
