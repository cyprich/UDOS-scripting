#!/bin/bash

: '
Vytvorte skript, ktorý vypíšte počet všetkých vstupných parametrov, vypíše
hodnotu 1., 5. a 11. argumentu, následne vypíše veľkosť 2 argumentu (počet
znakov daného argumentu). Potom nastaví argumenty 1,2, tri, four, something
ako argumenty skriptu a pre piaty argument vypíšte podreťazec od pozície 4 s
dĺžkou 5. Po skončení vráti skript hodnotu 1
'

echo "Prvy parameter: $1"
echo "Piaty parameter: $5"
echo "Jedenasty parameter: ${11}"

echo "Počet znakov druheho argumentu: ${#2}"
echo "Podreťazec piateho argumentu: ${5:4:5}"

exit 1
