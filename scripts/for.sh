#!/bin/bash
# klasicky for
for (( i = 0; i < 10; i++ ))
do
    echo $i
done

# pythonoidny for
# vypise cisla od 1 po 15
for i in $(seq 1 15)
do
    echo $i
done

# vypise pismena od A po F
for i in {A..F}
do
    echo $i
done

# vypise vsetky argumenty
for i in $@; do
    echo $i
done
