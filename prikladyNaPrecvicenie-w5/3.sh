#!/bin/bash

: '
Vytvorte skript, ktorý získa od používateľa 2 celé čísla a urobí ich +,-,*,/ (ak je to
možné vykonať), % a **
'

read -p "Zadaj prve cislo: " cislo1
read -p "Zadaj druhe cislo: " cislo2

echo "$cislo1 + $cislo2 = $(( cislo1 + cislo2 ))"
echo "$cislo1 - $cislo2 = $(( cislo1 - cislo2 ))"
echo "$cislo1 * $cislo2 = $(( cislo1 * cislo2 ))"

if [ $cislo2 -eq 0 ]
then
    echo "$cislo1 / $cislo2 nie je mozne vykonat"
else
    echo "$cislo1 / $cislo2 = $(( cislo1 / cislo2 ))"
fi

echo "$cislo1 % $cislo2 = $(( cislo1 % cislo2 ))"
echo "$cislo1 ** $cislo2 = $(( cislo1 ** cislo2 ))"
