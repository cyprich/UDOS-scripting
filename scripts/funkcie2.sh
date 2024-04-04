#!/bin/bash
mocnina() {
    local x=0
    read -p "zadaj cele cislo: " x
    echo $((x**2))
    return 0
}

vysledok=$(mocnina)
echo "mocnina zadaneho cisla je $vysledok"
