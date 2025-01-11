
#!/usr/bin/env bash

# Fonction pour obtenir le nombre de fichiers
function get_file_count {
    echo $(ls -1 | wc -l)
}

# Nombre de fichiers dans le répertoire courant
file_count=$(get_file_count)

# Début du jeu
echo "Combien de fichiers se trouvent dans le répertoire actuel ?"

while true; do
    read -p "Votre réponse : " user_guess

    if [[ $user_guess -eq $file_count ]]; then
        echo "Félicitations ! Vous avez deviné correctement."
        break
    elif [[ $user_guess -lt $file_count ]]; then
        echo "Trop bas. Essayez à nouveau."
    else
        echo "Trop haut. Essayez à nouveau."
    fi
done
