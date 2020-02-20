#!/bin/bash

read -p "Please enter a integer: " end

nb=1

for ((i=1;i<=end;i++)); do
    nb="$((nb*i))"
done

echo $nb

