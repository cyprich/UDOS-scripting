#!/bin/bash

: '
Vytvorte skript, pomocou ktorého budete simulovať hru myslím si číslo, pričom
používateľ bude mať za úlohu uhádnuť číslo. Vytvorte tiež skript, pomocou
ktorého budete simulovať hru myslím si číslo, pričom používateľ bude mať za
úlohu zvoliť náhodné číslo a skript ho bude musieť uhádnuť
'

POCET_POKUSOV=3
echo "Vymysli si nahodne cislo od 1 do 10. Mojou ulohou bude uhadnut ho do $POCET_POKUSOV pokusov"
while [ $POCET_POKUSOV -gt 0 ]
do
	NAHODNE_CISLO=$(( RANDOM % 10 + 1))
	PS3="Je tvoje cislo $NAHODNE_CISLO?: "
	select ODPOVED in "Ano" "Nie"
	do
		if [[ ODPOVED -eq 1 ]]
		then
			echo "Super, dakujem za skvelu hru!"
			exit 0
		else
			(( POCET_POKUSOV-- ))
			echo "Nevadi, mam este $POCET_POKUSOV pokus/-y/-ov"
		fi
	break;
	done
done

echo "Gratulujem, vyhral si, nepodarilo sa mi uhadnut tvoje cislo"
