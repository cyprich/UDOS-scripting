#!/bin/bash
# pomocou jednoducheho skriptu vytvorte adresare s nazvom Dir A, Dir A+1, Dir A+2, ... Dir B, kde A a B su cisla zadane pouzivatelom. pokial sa nezadaju tieto hodnoty, tak sa skript nevykona
read -p "Zadajte A: " A
read -p "Zadajte B: " B

if [ -z "$A" ] || [ -z "$B" ]; then
    echo "predchadzajuce hodnoty neboli spravne zadane"
    exit 1
fi

for i in $(seq "$A" "$B"); do
    mkdir "Dir $i"
done
