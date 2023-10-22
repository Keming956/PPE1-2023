annee=$1
mois=$2
ligne=$3

if [ -z "$1" ] && [ -z "$2" ] && [ -z "$3" ]
    then echo "Veuillez saisir des informations"
    exit
fi

if [[ $annee =~ 201(6|7|8) ]]
 then
    if [[ $mois =~ 0[1-9]|1[0-2] ]]
    then
        if [[ $ligne =~ [0-9]+ ]]
        then cat ./*$annee_*$mois* | egrep "Location" | cut -f 3 | sort | uniq -c | sort -nr | head -n $ligne
        else echo "Veuillez saisir un nombre"
        exit
        fi
    else echo "Veuillez saisir un nombre entre 01~12"
    exit
    fi
else echo "Veuillez saisir un nombre entre 2016 et 2018" 
exit
fi
