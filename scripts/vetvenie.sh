#!/bin/bash
read -p "zadajte cislo: "

if [ $REPLY -eq 0 ]; then
echo "zadali ste 0"
elif [ $REPLY -lt 0 ]; then
echo "zadali ste zaporne cislo"
else
echo "zadali ste kladne cislo"
fi
