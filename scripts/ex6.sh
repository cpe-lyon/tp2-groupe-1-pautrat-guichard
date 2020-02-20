#!/bin/bash

min=0
max=1000

rand=$((min + RANDOM % $((max-min))))

echo "Un nombre entre 0 et 1000 à été choisi au hasard, trouve le"

current=-1

while [ $current -ne $rand ]; do
    read -p "Quel est le nombre ? " current
    if [ $current -lt $rand ]; then
         echo "Le nombre secret est plus grand"
    elif [ $current -gt $rand  ]; then
         echo "Le nombre secret est plus petit"
    else
         echo "Bravo tu as trouvé le nombre secret !"
    fi
done
