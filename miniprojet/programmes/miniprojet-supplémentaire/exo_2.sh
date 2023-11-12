#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Il faut le nom du fichier et un nombre"
    exit 1
fi

# en cas de manque du nombre
number_of_words=${2:-25}

# -v exclure "^$" début et fin d'une ligne, ensemble pour excluer des lignes vides
./exo-1.sh "$1" | grep -v '^$' | sort | uniq -c | sort -nr | head -n $number_of_words
