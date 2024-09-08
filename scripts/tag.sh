#!/bin/bash
# Tag Docker image for backend with commit hash

for image in $IMAGES; do
    # Récupérer le nom de l'image
    image_name=$(basename "$image")
    echo "Taging image: $image_name ....."
    docker tag ${CONTAINER_REGISTRY_ENDPOINT}/${image_name}:latest ${CONTAINER_REGISTRY_ENDPOINT}/${image_name}:${COMMIT_HASH}
    # Pusher l'image vers le registre
    echo " $image_name Tagged"
  done
