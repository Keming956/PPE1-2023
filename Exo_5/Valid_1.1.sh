annee=$1
type=$2

if [ -z "$1" ] && [ -z "$2" ]
    then echo "Veuillez saisir des informations"
    exit
fi


if [[ $annee =~ 201(6|7|8) ]]
 then
    if [[ $type =~ (Person|Organization|Location|Hour|Product|Date|Event) ]]
    then NB_type=$(cat ./$annee* | egrep $type | wc -l)
         echo "Nombre d'annotations de type $type pour l'année $annee : $NB_type"

    else echo "Erreur de type"
    exit
    fi
 else echo "Veuillez saisir un nombre entre 2016 et 2018"
 exit
 fi