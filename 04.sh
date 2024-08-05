#!/bin/bash
# do riadku vypiste loginy vsetkych prihlasenych pouzivatelov, ktorych login sa zacina na zvolene pismeno

read -p "zadajte zaciatocne pismeno pouzivatelov, ktorych chcete vypisat: "  
echo "$REPLY"
users | grep '$REPLY'*
