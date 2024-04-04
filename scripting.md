# Scripting
## UDOS

## Hello World
```shell
#!/bin/bash
echo "Ahoj $USER, dnes je $(date)"
```

## Spúštanie súboru
```shell
bash ahoj.sh
```
```shell
chmod u+x ahoj.sh
./ahoj.sh
```

## Komentáre
```shell
# Jednoriadkovy komentar
: 'toto
je
viacriadkovy
komentar'
```

## User input
```shell
#!/bin/bash
read -p "Zadaj meno: " $MENO
echo "Ahoj $MENO"

read -t5 -p "Zadaj meno do 5 sekund: " $MENO
read -n7 -p "Zadaj text, maximalne 7 znakov: " $TEXT
read -s -p "Zadaj heslo: "  # nebude vidiet pri pisani
```

## Arguments
```shell
./helloworld.sh prvyArgument nejakyInyArgument 25 "Neviem vymysliet originalny priklad"
```
| Označenie     | Význam                                   |
|---------------|------------------------------------------|
| ${0} - ${225} | Prístup ku danému argumentu              |
| $#            | Počet argumentov                         |
| $@            | Zoznam argumentov ako samostatné reťazce |
| $*            | Zoznam argumentov ako jeden reťazec      |


# Variables
```shell
#!/bin/bash
N=10
echo $N
echo "Moje cislo: $N"
```

| Označenie        | Význam                                                                                                                 |
|------------------|------------------------------------------------------------------------------------------------------------------------|
| ${#N}            | Dĺžka premennej N                                                                                                      |
| ${N:3}           | Premenná N, odrezané prvé 3 znaky                                                                                      |
| ${N:3:5}         | Premenná N, odrezané prvé 3 znaky, dĺžka 5 znakov                                                                      |
| ${N:3:5}         | Premenná N, prvých 5 znakov                                                                                            |
| ${N:=6}          | Premenná N (ak existuje)<br/>Ak neexistuje, vytvorí ju a nastaví na hodnotu 6                                          |
| ${N/4/6}         | V premennej N hľadá **prvú** hodnotu 4 a nahradí ju hodnotou 6                                                         |
| ${N//4/6}        | V premennej N hľadá **všetky** hodnoty 4 a nahradí ju hodnotou 6                                                       |
| ${N#123}         | Z premennej N odstráň 123 **na začiatku**                                                                              |
| ${N%123}         | Z premennej N odstráň 123 **na konci**                                                                                 |
| ${N,}<br/>${N,,} | Zmena **prvého** znaku premennej N na **malé písmeno**<br/>Zmena **všetkých** znakov premennej N na **malé písmeno**   |
| ${N^}<br/>${N^^} | Zmena **prvého** znaku premennej N na **veľké písmeno**<br/>Zmena **všetkých** znakov premennej N na **veľké písmeno** |


## Návratová hodnota
```shell
#!/bin/bash
echo $?
```

## Aritmetické operácie
```shell
#!/bin/bash
echo $(( 2 + 6 ))  # + - * / %
echo $(( N+=2 ))  # += -= *= /= %=
echo $(( 2 < 4 ))  # > < >= <= == !=

let RESULT=2**8
```

## Logické operácie
|            |                                  |
|------------|----------------------------------|
| 0          | true                             |
| 1          | false                            |
| Celé čísla | -eq -ne -lt -le -gt -ge          |
| Reťazce    | -z -n = != =~ < >                |
| Súbory     | -r -w -x -f -d -e -s -ef -nt -ot |
|            | && -a \| \| -o !                 |

Pomocou `[ ]`, `[[ ]]` (nemusí byť kompatibilné s inými shell-mi)  
Alebo príkazom test
```shell
[ -f prvy.sh ]
test $A -lt 10 -a $A -ge 0
```

## Vetvenie
### if
```shell
#!/bin/bash
N=5

if [ $N -gt 4 ]; then
  echo "ano"
elif [ $N == 4 ]
then
  echo "mozno"
else 
  echo "nie"
fi
```

```shell
#!/bin/bash
read -p "Zadajte cislo: "
if [ $REPLY -eq 0 ]; then
  echo "Zadali ste 0"
elif [ $REPLY -gt 0 ]; then
  echo "Zadli ste zaporne cislo"
else 
  echo "zadali ste kladne cislo"
fi
```

```shell
#!/bin/bash

```

```shell
#!/bin/bash

```

