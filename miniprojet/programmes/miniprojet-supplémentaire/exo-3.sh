#!/bin/bash

# 检查是否提供了文件路径
if [ $# -lt 1 ]; then
    echo "Il faut un fichier et un nombre"
    exit 1
fi

number_of_words=${2:-25}

# paste - - pour créer des bigrammes
./exo-1.sh "$1" | grep -v '^$' | paste - - | sort | uniq -c | sort -nr | head -n $number_of_words
