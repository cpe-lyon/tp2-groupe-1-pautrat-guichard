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


if [ is_number $1 ] ; then
    echo "C'est un nombre"
else
    echo "C'est pas un nombre"
fi
