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

echo "En utilisant les paramètres"

for((i=0;i<$nbParams;i++)); do
    
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

echo "Min: $min,  Max: $max, Avg: $avg"



echo "en utilisant un tableau"

state=1

while [ $state -eq 1 ]; do
    read -p "Ajouter un nombre au calcul" nb
    
done




