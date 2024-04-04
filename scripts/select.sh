#!/bin/bash
a=5
b=6
PS3="vyberte si s operaciu: "
select op in + - "*" / %

do
    case $op in
    +|-|"*"|/|%)
        echo "$a $op $b = $(($a $op $b))";;
    *)
        echo "koniec"
        break;;
    esac
done
