#!/bin/bash

declare -A rezim1stats

rezim1() {
	if ! [ $userinput == "koniec" ]; then
		slovicko=${userinput:0:3}
		((rezim1stats[$slovicko]++))
	else
		for i in ${!rezim1stats[@]}; do
			echo "Hodnota $i sa nachadzala ${rezim1stats[$i]} krat"
		done
	fi
}

rezim2() {
	if ! [ $userinput == "koniec" ]; then touch priklad1rezim2/${userinput: -3}; fi
}

rezim3() {
	if ! [ $userinput == "koniec" ]; then
		touch .priklad1rezim3
		zatial_text=$(cat .priklad1rezim3)
		echo "$zatial_text $userinput" > .priklad1rezim3
	else
		echo "Neviem s tymi slovami spravit to co sa ma, mozem ich vypisat"
		cat .priklad1rezim3
		rm -f .priklad1rezim3
	fi
}

rezim4() {
	if ! [ $userinput == "koniec" ]; then 
		echo "rezim4 sa mi uz nechce robit fakt"
	else
		echo "koniec"
	fi
}



read -p "Zadaj cislo rezimu: " rezim
while [ true ]; do
	read -p "Zadaj nejake slovicko: " userinput
	case $rezim in
		1) rezim1;;
		2) rezim2;;
		3) rezim3;;
		4) rezim4;;
	esac
	if [ $userinput == "koniec" ]; then break; fi
done
