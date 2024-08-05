#!/bin/bash
# vytvorte skript, ktory bude nacitavat slova z klavesnice, az kym sa nezada slovo koniec
# skript bude pracovat v 4 rezimoch
#   1. rezim - budu sa z nacitavanych slov ziskavat prve tri znaky a tieto znaky sa budu urcitym sposobom evidovat. pri skoncenie skriptu sa vypise pocetnost jenotlivych trojic znakov  
#   2. rezim - na zaklade kazdeho slova sa vytvori subor, ktoreho nazov sa bude zhodovat s poslednymi troma znakmi
#   3. rezim - slova sa budu ukladat do skryteho suboru, pricom po skonceni skriptu sa vypise top 3 zoznam najdlhsich slov a skyty subor sa vymaze
#   4. rezim - na zaklade kazdeho slova vymaze subor, ktoreho nazov sa zhoduje s posledymi troma znakmi


