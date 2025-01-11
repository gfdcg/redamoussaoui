all: README.md

README.md: guessinggame.sh
	echo "# Projet Guessing Game" > README.md
	echo "" >> README.md
	echo "Ce fichier a été généré le : $$(date)" >> README.md
	echo "" >> README.md
	echo "Le programme contient le nombre suivant de lignes de code : $$(wc -l < guessinggame.sh)" >> README.md
