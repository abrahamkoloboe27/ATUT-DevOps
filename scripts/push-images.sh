#!/bin/bash

for image in $SERVICES; do
    # Récupérer le nom de l'image
    image_name=$(basename "$image")
    echo "Pushing image: $image_name ....."
    docker push ${CONTAINER_REGISTRY_ENDPOINT}/${image_name}:latest

    # Pusher l'image vers le registre
    echo " $image_name pushed to registry succesfully"
  done
