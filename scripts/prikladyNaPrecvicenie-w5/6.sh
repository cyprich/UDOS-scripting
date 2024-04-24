#!/bin/bash

: 'Vytvorte skript, v ktorom hodíte y-hrannou kockou x-krát (x a 3<y<31 sú hodnoty
zadané ako argument skriptu, pričom ak nie sú zadané alebo nie sú platné, tak
skript sa hneď skončí) a následne sa vypíše, koľko krát padli jednotlivé hodnoty na
kocke
'


if [[ $1 -le 0 ]]
then
	echo "Argument 1 (pocet hodov kocky) nebol spravne zadany"
	echo "Argument 1 ma byt cele cislo vacsie ako 0"
	exit 1
elif [[ $2 -lt 4 ]] || [[ $2 -gt 30 ]]
then
	echo "Argument 2 (pocet hran kocky) nebol spravne zadany"
	echo "Argument 2 ma byt cele cislo z rozsahu <4; 30>"
	exit 1
fi

declare -a ZOZNAM

for (( i=0; i<$1; i++ ))
do
	N=$(( RANDOM % $2 + 1 ))
	echo $N
	(( ZOZNAM[$N]++ ))
done

for (( i=1; i<=$2; i++ ))
do
	echo "Pocet $i: ${ZOZNAM[i]}"
done
