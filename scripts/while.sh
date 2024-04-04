#!/bin/bash
x=1
while [ $x -le 5 ]
do
    echo "Variable X is now equal to $x"
    x=$(( $x+1 ))
done

y=1
while test $y -ne 10
do
    echo $y
    ((y++))
done


# until - opak while - "while not"
let z=3**3
until [ $z -le 0 ]
do
    echo $z
    let z--
done
