#!/bin/bash

while [ true ]; do
	read -p "Zadaj prikaz (a-d alebo end): "
	case $REPLY in
	end)
		echo "Dovidenia"
		exit 0
		;;
    	a)
        	read -p "Zadaj cestu k adresaru: " adresar
		ls $adresar | grep -E '^[arst][^0-9]{4,}'
		;;
	b)
        	read -p "Zadaj cislo: " cislo
        	if [[ "$cislo" =~ ^[0-9]+$ ]]; then
	                echo "Generujem $cislo cisel z rozsahu <1; 100>..."
			declare -a zoznamb
			for i in $(seq 1 $cislo); do
				nahodne_cislo=$(( RANDOM % 100 + 1 ))
				echo $nahodne_cislo
				zoznamb+=($nahodne_cislo)
			done

			echo "Generovanie dokoncene..."
			najmensie_cislo=100
			for i in ${zoznamb[@]}; do
				if [[ najmensie_cislo -gt $i ]]; then
					najmensie_cislo=$i
				fi
			done
			echo "Najmensie cislo z vygenerovanych je $najmensie_cislo"
		else
			echo "Zadany vstup nie je platny"
        	fi
		;;
	c)
		declare -A zoznamc
		while [ true ]; do
			read -p "Zadavaj nejake slova (end pre ukoncenie): " slovo
			if ! [[ $slovo == "end" ]]; then
				zoznamc[$slovo]=$((zoznamc[$slovo]+1))
				for i in ${!zoznamc[@]}; do
					echo "$i: ${zoznamc[$i]}"
				done
			else
				break
			fi
		done
		;;
	d)
		
		;;
	*)
		echo "Takyto prikaz nepoznam..."
	esac
done
