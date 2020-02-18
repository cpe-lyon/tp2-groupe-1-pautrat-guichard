#!/bin/bash

read -p "Please enter a integer: " n

start=1

for((i=1;i<=n;i++)); do
    start="$((start*i))"
done

echo $start

