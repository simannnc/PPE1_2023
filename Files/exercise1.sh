ANNEE=$1
TYPE=$2
NB_OCCURENCE_TYPE=$(cat ../Files/ann/$ANNEE/*/* |egrep $TYPE |wc -l)
echo "Nombre d'annotations de type $TYPE pour l'année $ANNEE: $NB_OCCURENCE_TYPE"