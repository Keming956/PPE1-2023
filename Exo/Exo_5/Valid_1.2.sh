type=$1

if [ -z "$1" ]
then echo "veuillez saisir un type"
exit
fi

if [[ $type =~ (Person|Organization|Location|Hour|Product|Date|Event) ]]
then 
bash Exo_Script_1_1.sh 2016 $type
bash Exo_Script_1_1.sh 2017 $type
bash Exo_Script_1_1.sh 2018 $type

else echo "Erreur de type"
exit
fi
