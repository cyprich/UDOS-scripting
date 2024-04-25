#!/bin/bash

rezim1() {
	pocet_pokusov=8
	nahodne_cislo=$(( RANDOM % 100 + 1 ))
	echo ""
	echo "Vygeneroval som cislo v rozsahu <1; 100>"
	while [[ pocet_pokusov -gt 0 ]]; do
		read -p "Hadaj cislo: " cislo
		if [[ nahodne_cislo -eq cislo ]]; then
			if [[ pocet_pokusov -ge 4 ]]; then
				echo "Good job. you are unstoppable!"
				exit 0
			else
				echo "Congrats!"
				exit 0
			fi
		elif [[ nahodne_cislo -gt cislo ]]; then
			echo "Moje cislo je vacsie"
		elif [[ nahodne_cislo -lt cislo ]]; then
			echo "Moje cislo je mensie"
		fi
		((pocet_pokusov--))
	done
	echo "Game over, you lost!"
}



rezim2() {
	pocet_pokusov=8
	echo ""
	read -p "Zadaj cislo ktore si myslis (z rozsahu <1; 100>): " cislo
	if [[ cislo -ge 1 ]] & [[ cislo -le 100 ]]; then
		while [[ pocet_pokusov -gt 0 ]]; do
			nahodne_cislo=$(( RANDOM % 100 + 1 ))
			echo "Tipujem cislo $nahodne_cislo"
			if [[ nahodne_cislo -eq cislo ]]; then
				echo "All your base are belong to us"
				exit 0
			else
				echo "Neuhadol som, ale mam este $pocet_pokusov pokusov"
			fi
		done
		echo "A WINNER IS YOU!"
	else
		echo "Does not compute!" >&2
		exit 1
	fi
}



PS3="Vyberte rezim v ktorom chcete hrat: "
select rezim in "Rezim 1 - pocitac si mysli cislo, vy hadate" "Rezim 2 - vy si myslite cislo, pocitac hada"
do
	case $rezim in
		*"1"*)
			rezim1
			break;;
		*"2"*)
			rezim2
			break;;
		*)
			echo "Taky rezim nepoznam..."
	esac
done
