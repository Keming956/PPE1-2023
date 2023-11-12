#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Il faut un fichier"
    exit 1
fi

# \w pour matcher tous les "words"
grep -oE '\w+' "$1" | tr '[:upper:]' '[:lower:]'
