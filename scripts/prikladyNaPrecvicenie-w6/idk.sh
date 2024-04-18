#!/bin/bash

X=$1
Y=$2

# if $# -eq 2

if [[ -z "${X}" || -z "${Y}" ]]
then
    echo "Neplatny vstup"
    exit 1
else
    echo "pohoda"
fi
