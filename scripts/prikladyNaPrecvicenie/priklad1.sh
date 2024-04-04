#!/bin/bash

: '
Vytvorte skript, ktorý vyzve používateľa na zadanie roku a následne vypíšte počet
rokov (celé číslo) medzi zadaným rokom a aktuálnym rokom. Pokiaľ používateľ
nezadá rok do 5 sekúnd, program miesto toho vypíše aktuálny čas (hodiny a
minúty)
'

read -t5 -p "Zadajte rok do 5 sekund: "
if [ -z $REPLY ]
then
    echo "Momentálny čas: $(date)"
else
    echo $(( REPLY - 2024 ))
fi
