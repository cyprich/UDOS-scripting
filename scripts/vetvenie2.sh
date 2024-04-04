#!/bin/bash
read -p "Zadaj heslo: "

case $REPLY in
bumbac)
    echo "Spravne heslo, vitajte $USER"
    ;;
heslo)
    echo "Takto to nefunguje..."
    ;;
*)
    echo "Nespravne heslo"
    ;;
esac


