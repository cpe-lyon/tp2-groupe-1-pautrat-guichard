## Programmation Bash

`export PATH=$PATH:/mnt/projects/Cpe/S6/Linux/Tp2/scripts` 

## EX 1

1. Bash trouve les commandes dans les dossiers présents dans la variable d'environnement $PATH
2. C'est `$HOME`
3. `LANG` définit la catégorie de localisation du système, `PWD` est le dossier de travail courant, `OLDPWD` est le dossier de travail précédent, `SHELL` définit le shell utilisé par le système ("/bin/sh", "/bin/bash", ...) et `_` est le dernier argument de la dernière commande exécutée
4. `MY_VAR=42` ; on peut vérifier l'existence avec `echo $MY_VAR`
5. `bash` lance un nouveau shell "bash" ; la variable $MY_VAR n'existe plus car elle appartenait au shell précédent
6. `export MY_VAR=42` ; la variable est maintenant une variable système, elle est partagée lors de la création d'un nouveau shell
7. `export NOMS="GUICHARD PAUTRAT"` ; `echo $NOMS`
8. `echo Bonjour à vous deux, $NOMS!`
9. La commande unset supprime totalement la variable, avec une valeur vide la variable existe toujours
10. `echo \$HOME = $HOME`
