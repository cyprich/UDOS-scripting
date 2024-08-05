#!/bin/bash
# hadze sa 10-strannou kockou x krat (49 < x < 101), pricom x je parameter programu
# ak hodnota nie je zadana alebo je neplatna, program sa hned skonci  
# nasledne sa vypise top 3 zoznam hodnot, ktore padali najcastejsie

if [ -z "$1" ] || [ "$1" -lt 50 ] || [ "$1" -gt 100 ]; then
    echo "nezadali ste argument, alebo zadany argumet je mimo rozsahu <50 - 100>"
    exit 1
fi


for i in $( seq 1 $1 ); do
    echo "$(( RANDOM % 10 + 1 ))"
done | sort | uniq -c | sort -nr | head -3
