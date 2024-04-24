#!/bin/bash

: '
Vytvorte skript, ktorý vygeneruje 3 náhodné čísla v rozsahu 1-9 a následne počká
od používateľa na zadanie čísla z rozsahu 1-9. Pokiaľ zadané číslo bolo
vygenerované, tak vypíšte gratulácia, vyhrali ste 1000€ (pokiaľ bolo
vygenerovaných viac daných čísel, tak cena bude toľkokrát väčšia, t.j. pri 2
bude 2000 a pri 3 3000). Ak nie, tak vypíše smola, veľa šťastia nabudúce
'

cislo1=$((1 + $RANDOM % 9 ))
cislo2=$((1 + $RANDOM % 9 ))
cislo3=$((1 + $RANDOM % 9 ))

read -p "Zadajte cislo od 1 do 9: "

vyhra=0

if [ $cislo1 -eq $REPLY ]
then
    vyhra=$(( vyhra + 1000 ))
elif [ $cislo2 -eq $REPLY ]
then
    vyhra=$(( vyhra + 1000 ))
elif [ $cislo3 -eq $REPLY ]
then
    vyhra=$(( vyhra + 1000 ))
fi


if [ $vyhra -eq 0 ]
then
    echo "smola, vela stastia nabuduce"
else
    echo "Vasa vyhra: $vyhra"
fi
