#!/bin/bash
read -p "Zadaj cislo A: " A
if ! [[ "$A" =~ ^[0-9]+$ ]]
then
	echo "A nie je cislo"
	exit 1
fi


read -p "Zadaj cislo B: " B
if ! [[ "$B" =~ ^[0-9]+$ ]]
then
	echo "B nie je cislo"
	exit 1
fi

if [ "$A" -ge "$B" ]
then
	echo "A nemoze byt vacsie ako B"
	exit 1
fi

while [ "$A" -le "$B" ]
do
	name="Dir $A"
	mkdir -p "Dir $A"
	echo "Adresar $name bol vytvoreny"
	((A++))
done
