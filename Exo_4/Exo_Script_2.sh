annee=$1
mois=$2
ligne=$3

cat ./*$annee_*$mois* | egrep "Location" | cut -f 3 | sort | uniq -c | sort -nr | head -n $ligne