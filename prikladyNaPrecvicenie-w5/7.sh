#!/bin/bash

: '
Vytvorte skript, ktorý od používateľa bude požadovať cestu. Následne v danom
adresári nájde všetky súbory používateľa skriptu, pričom pokiaľ je daný súbor
adresárom, tak mu zobrazí aj obsah daného adresára a pokiaľ by bol nájdený
súbor prázdny, tak mu bude ponúknuté príslušný súbor vymazať. Pokiaľ používateľ
zadá miesto adresára súbor, tak sa vypíše počet riadkov, slov, znakov v súbore,
ak je tento súbor textový. Ak sa jedná o binárny súbor, tak sa nevykoná nič
'

read -p "Zadaj cestu: " path
s=$(file "$path")

vymazat_subor() {
	echo "Zadany subor je prazdny. Prajete si ho vymazat?"
	PS3="Vasa volba (1 alebo 2): "
	select volba in "Ano" "Nie"
	do
		case $volba in
		"Ano" | "ano" | "A" | "a")
			rm -f $path
			echo "Subor bol vymazany"
			;;
		*)
			echo "Subor nebol vymazany"
			;;
		esac
		break;
	done
}

textovy_subor() {
	R=$(wc -l < $path)
	S=$(wc -w < $path)
	Z=$(wc -c < $path)


	if [ $(wc -c < $path) -le 0 ]; then
		vymazat_subor
	fi

	echo "Textovy subor $path"
	echo "Pocet riadkov $(wc -l < $path)"
	echo "Pocet slov: $(wc -w < $path)"
	echo "Pocet znakov: $(wc -c < $path)"
}

priecinok() {
	echo "Obsah adresara $path"
	ls
}

nic() {
	echo "Zadana cesta nezodpoveda ani textovemu suboru priecinku"
}


case "$s" in
	*"text"*)
		textovy_subor
		;;
	*"directory"*)
		priecinok
		;;
	*"empty"*)
		vymazat_subor
		;;
	*)
		nic
		;;
esac
