annee=$1
type=$2
NB_type=$(cat ./$annee* | egrep $type | wc -l)
echo "Nombre d'annotations de type $type pour l'année $annee: $NB_type"