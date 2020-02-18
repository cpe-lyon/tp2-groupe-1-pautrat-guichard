#!/bin/bash



if is_number $1  ; then 
    echo "C'est un nombre"
else 
    echo "C'est pas un nombre"
fi
for((i=0;i<n;i++)); do
    echo "$i"
done
