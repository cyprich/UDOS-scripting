#!/bin/bash
# help read

read -p "Zadaj text: " NIECO
echo "Zadal si: $NIECO"

read -t5 -p "Zadaj text do 5 sekund: " NIECO2
echo "Zadal si: $NIECO2"

read -n7 -p "Zadaj maximalne 7 znakov: " NIECO3
echo "Zadal si: $NIECO3"

read -s -p "Zadaj top secret heslo: " NIECO4  # tu ho vypisovat nebude
echo "--$NIECO4--"  # tu ho vypisovat bude
