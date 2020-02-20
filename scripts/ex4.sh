
#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Utilisation : $0 nom_utilisateur"
else
    nbUser=`sudo cat /etc/passwd | cut -f 1 -d : | grep -e "^$1$" | wc -l`

    if [[ $nbUser -ge 1 ]]; then
         echo "L'utilisateur $1 est connu"
    else
         echo "$1 n'est pas un utilisateur"
    fi
fi
