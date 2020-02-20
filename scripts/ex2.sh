#!/bin/bash

password=123

read -s -p "Please enter the password: " user_password

if [[ $user_password = $password ]]; then
    echo "Correct"
else
    echo "Incorrect"
fi
