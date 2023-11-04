#!/usr/bin/env bash

file_path=$1 
n=0 # compteur

if [ $# -eq 1 ]; 
	then 
    while read -r line; do # read file by lines
        n=$((n + 1)) # compter le compteur
        infos=$(curl -Is "$line")
		http_code=$(echo "$infos" | grep -oE "^HTTP/[0-9](\.[0-9])? [0-9]{3}" | awk '{print $2}') #awk print the second part of the ancient requête
		
       #encodage
        encoding=$(echo "$infos" | awk -F"charset=" '/charset=/ {print $2; exit}' | tr -d ';\r\n')
		#awk -F"charset=" sets the field separator to charset=.
		#/charset=/ searches for lines containing "charset=".
		#{print $2; exit} prints the second field (which should be the charset value) and then exits awk (assuming there is only one Content-Type line).
		#tr -d ';\r\n' removes any semicolon, carriage return, or newline characters that might be at the end of the charset string.
        
        echo -e "$n\t$http_code\t$encoding\t$line"

    done < "$file_path" 
else
    echo "manque d'argument" 
	exit
fi

