#!/bin/bash


docker compose build
# Lister les images des conteneurs en cours d'exécution
images=$(docker ps --format "{{.Image}}" | sort | uniq)

# Vérifier s'il y a des conteneurs en cours d'exécution
if [ -z "$images" ]; then
    echo "Aucun conteneur en cours d'exécution.Une erreur est survenue"
    exit  0
fi

# Sauvegarder les images dans une variable d'environnement
echo "IMAGES=$images" >> $GITHUB_ENV