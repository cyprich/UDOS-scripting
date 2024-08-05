#!/bin/bash
# zistite, kolko blokovych zariadeni sa nachadza v adresari /dev/
n=$(lsblk | wc -l)
((n--))  # prvy riadok nie je zariadenie, ale informacie o vystupe, preto ho treba odstranit
echo "$n"
