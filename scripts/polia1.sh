#!/bin/bash
# delaracia pola
declare -a pole0
pole0+=(nejake nahodne elementy)
echo ${pole0[2]}

# delkaracia pola priradenim hodnot
pole=(jeden dva tri)
echo ${pole[1]}

# pridavanie do pola
pole+=(styri pat "s e s t")
echo ${pole[5]}
