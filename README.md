# Scripting
Scriptovanie na predmete UDOS

# 1. Základné srandičky
### Hello World
```shell
#!/bin/bash
echo "Hello World!"
```

### Spúštanie súboru
```shell
bash ahoj.sh
```
```shell
chmod u+x ahoj.sh
./ahoj.sh
```

### Komentáre
```shell
# Jednoriadkovy komentar
: 'toto
je
viacriadkovy
komentar'
```
[ahoj.sh](./scripts/ahoj.sh)

# 2. Premenné
```shell
#!/bin/bash
N=10
echo $N
echo "Moje cislo: $N"
```
### Operácie s premennými
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
[variables.sh](./scripts/variables.sh)

### User input
```shell
#!/bin/bash
read -p "Zadaj meno: " $MENO
echo "Ahoj $MENO"

read -t5 -p "Zadaj meno do 5 sekund: " $MENO
read -n7 -p "Zadaj text, maximalne 7 znakov: " $TEXT
read -s -p "Zadaj heslo: "  # nebude vidiet pri pisani
```
[userInput.sh](./scripts/userInput.sh)


### Arguments
```shell
./helloworld.sh prvyArgument nejakyInyArgument 25 "Neviem vymysliet originalny priklad"
```
| Označenie     | Význam                                   |
|---------------|------------------------------------------|
| ${0} - ${225} | Prístup ku danému argumentu              |
| $#            | Počet argumentov                         |
| $@            | Zoznam argumentov ako samostatné reťazce |
| $*            | Zoznam argumentov ako jeden reťazec      |

### Návratová hodnota
Exit status of last command
```shell
#!/bin/bash
echo $?
```

### Aritmetické operácie
```shell
#!/bin/bash
echo $(( 2 + 6 ))  # + - * / %
echo $(( N+=2 ))  # += -= *= /= %=
echo $(( 2 < 4 ))  # > < >= <= == !=

let RESULT=2**8
```
[aritmetickeoperacie.sh](./scripts/aritmetickeoperacie.sh)

### Logické operácie
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

# 3. Vetvenie
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
[vetvenie.sh](./scripts/vetvenie.sh)

### case
```shell
#!/bin/bash
read -p "Zadaj heslo: "

case $REPLY in
bumbac)
    echo "Spravne heslo, vitajte $USER"
    ;;
heslo)
    echo "Takto to nefunguje..."
    ;;
*)
    echo "Nespravne heslo"
    ;;
esac
```
[vetvenie2.sh](./scripts/vetvenie2.sh)

# 4 Cykly
### for
```shell
#!/bin/bash
# klasicky for
for (( i = 0; i < 10; i++ ))
do
    echo $i
done
```

```shell
#!/bin/bash
# pythonoidny for
# vypise cisla od 1 po 15
for i in $(seq 1 15)
do
    echo $i
done
```

```shell
#!/bin/bash
# vypise pismena od A po F
for i in {A..F}
do
    echo $i
done
```

```shell
#!/bin/bash
# vypise vsetky argumenty
for i in $@; do
    echo $i
done
```
[for.sh](./scripts/for.sh)


### while
```shell
#!/bin/bash
x=1
while [ $x -le 5 ]
do
    echo "Variable X is now equal to $x"
    x=$(( $x+1 ))
done
```

```shell
#!/bin/bash
y=1
while test $y -ne 10
do
    echo $y
    ((y++))
done
```

```shell
#!/bin/bash
# until - opak while - "while not"
let z=3**3
until [ $z -le 0 ]
do
    echo $z
    let z--
done
```
[while.sh](./scripts/while.sh)

```shell
#!/bin/bash

```

### select
```shell
#!/bin/bash
a=5
b=6
PS3="vyberte si s operaciu: "
select op in + - "*" / %

do
    case $op in
    +|-|"*"|/|%)
        echo "$a $op $b = $(($a $op $b))";;
    *)
        echo "koniec"
        break;;
    esac
done
```
PS3 - prompt pre výber

# 5 Funkcie
```shell
#!/bin/bash
# klasicka definicia funkcie
# argumenty sa nezadavaju?
sucet() {
    echo $(($1 + $2))
    return 0
}

#polopythonoidna definicia funkcie
function rozdiel {
    echo $(($1 - $2))
    return 0
}

if test $# -ge  2
then
    temp=$(sucet $1 $2)
    echo "sucet je $temp"
    temp=$(rozdiel $1 $2)
    echo "rozdiel je $temp"
fi

```
[funkcie1.sh](./scripts/funkcie1.sh)

```shell
#!/bin/bash
mocnina() {
    local x=0
    read -p "zadaj cele cislo: " x
    echo $((x**2))
    return 0
}

vysledok=$(mocnina)
echo "mocnina zadaneho cisla je $vysledok"
```
local - lokálna premenná
[funkcie2.sh](./scripts/funkcie2.sh)

```shell
#!/bin/bash

```

```shell
#!/bin/bash

```

```shell
#!/bin/bash

```

```shell
#!/bin/bash

```

