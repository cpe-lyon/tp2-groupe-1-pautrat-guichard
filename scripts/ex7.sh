#!/bin/bash

function is_number()
{
	re='^[+-]?[0-9]+([.][0-9]+)?$'
	if ! [[ $1 =~ $re ]] ; then
		echo 1
	else
		echo 0
	fi
}


sum=0
nbParams=$#
min=$1
max=$1

if [ $nbParams -lt 2 ]; then
	echo "Aucun paramètre à traiter"
else
	echo "En utilisant les paramètres"

	for ((i=0;i<$nbParams;i++)); do
		isANumber=$(is_number $1)

		if [ "$isANumber" -eq "1" ]; then
			echo "L'argument \"$1\" n'est pas un nombre"
			exit 1
		fi

		sum=$((sum + $1))
		if [ $1 -lt $min ]; then
			min=$1
		elif [ $1 -gt $max ]; then
			max=$1
		fi
		shift
	done

	avg=$((sum / nbParams))

	echo "Min: $min, Max: $max, Avg: $avg"
fi

echo "en utilisant un tableau"

declare -a tab

while [ 0 ]; do
	read -p "Ajouter un nombre au calcul : " nb
	if [ $(is_number $nb) -eq 0 ]; then
		tab+=($nb)
	else
		break
	fi
done

if [ ${#tab[@]} -eq 0 ]; then
	echo "Aucun nombre à traiter"
else
	max=${tab[0]}
	min=${tab[0]}
	sum=0
	nbNombres=${#tab[@]}

	for ((i=0;i<$nbNombres;i++)); do
		sum=$((sum+tab[i]))

		if [[ ${tab[$i]} < $min ]]; then
			min=${tab[$i]}
		elif [[ ${tab[$i]} > $max ]]; then
			max=${tab[$i]}
		fi
	done

	avg=$((sum / nbNombres))

	echo "Min: $min, Max: $max, Avg: $avg"
fi
