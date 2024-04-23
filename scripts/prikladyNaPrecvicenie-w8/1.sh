#!/bin/bash

while [ true ]
do
    read -p "zadaj prikaz: "

    case $REPLY in
    end)
        echo dovidenia
        exit 0;;
    a)
        echo hladam...;;
    b)
        read -p "zadaj cislo v rozsahu <1-100>: " $cislo
        if [ -n $cislo ] && [ $cislo -ge 1 ] && [ $cislo -le 100 ]
            then
                echo "zzzz"
        fi;;


    esac

done
