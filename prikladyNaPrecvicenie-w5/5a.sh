#!/bin/bash

: '
Vytvorte skript, pomocou ktorého budete simulovať hru myslím si číslo, pričom
používateľ bude mať za úlohu uhádnuť číslo. Vytvorte tiež skript, pomocou
ktorého budete simulovať hru myslím si číslo, pričom používateľ bude mať za
úlohu zvoliť náhodné číslo a skript ho bude musieť uhádnuť
'

VYGENEROVANE_CISLO=$(( RANDOM%9+1 ))
POCET_POKUSOV=3

echo "Pocitac si vymyslel nahodne cislo od 1 do 10"

while [ $POCET_POKUSOV -gt 0  ]
do
	echo "Ostavajuci pocet pokusov: $POCET_POKUSOV"
	read -p "Ake cislo si myslim?: " 
	if [[ $REPLY -eq $VYGENEROVANE_CISLO ]]
	then
		echo "Gratulujem, vyhral si! Uhadol si cislo $VYGENEROVANE_CISLO"
		exit 0
	else 
		echo "Tvoj odhad bol nespravny..."
	fi

	((POCET_POKUSOV--))
done

echo "Bohuzial nepodarilo sa ti uhadnut spravne cislo. Cislo ktore si hladal bolo: $VYGENEROVANE_CISLO"

