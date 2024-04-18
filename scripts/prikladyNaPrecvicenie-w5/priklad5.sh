#!/bin/bash

: '
Vytvorte skript, pomocou ktorého budete simulovať hru myslím si číslo, pričom
používateľ bude mať za úlohu uhádnuť číslo. Vytvorte tiež skript, pomocou
ktorého budete simulovať hru myslím si číslo, pričom používateľ bude mať za
úlohu zvoliť náhodné číslo a skript ho bude musieť uhádnuť
'

vygenerovanecislo=$(( 1 + $RANDOM % 9 ))
cislopouzivatela=0

echo $vygenerovanecislo

while [ $cislopouzivatela -ne $vygenerovanecislo ]
do
    read -p "Zadaj cislo (1-9), ktore si myslis: "
    cislopouzivatela=$REPLY
    if [ $cislopouzivatela -ne $vygenerovanecislo ]
    then
        echo "Cislo je nespravne"
    else
        echo "Uhadol si cislo, gratulujem!"
    fi
done
