#!/bin/bash
# deklaracia asociativneho pola
declare -A pole
pole=([auto]=car [strom]=tree [jablko]=apple)
pole[voda]=water

echo "auto sa povie ${pole[auto]}"
echo "voda sa povie ${pole[voda]}"

echo "pocet prvkov pola: ${#pole[@]}"
echo "vsetky prvky: ${pole[*]}"

echo "vsetky prvky cez for loop: "
for i in ${pole[@]}
do
    echo $i
done

echo "vsetky kluce prvkov pola: "
for i in ${!pole[@]}
do
    echo $i
done


