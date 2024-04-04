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
