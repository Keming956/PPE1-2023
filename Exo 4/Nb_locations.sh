shebang#!/usr/bin/bash
NB_2016=$(cat ./2016* |egrep "Location"|cut -f 3 | wc -l)
NB_2017=$(cat ./2017* |egrep "Location"|cut -f 3 | wc -l)
NB_2018=$(cat ./2018* |egrep "Location"|cut -f 3 | wc -l)

echo "Locations pour l'année 2016 :$NB_2016"
echo "Locations pour l'année 2017 :$NB_2017"
echo "Locations pour l'année 2018 :$NB_2018"

