#!/bin/bash

# Variables

# Parse docker-compose.yml to get service names
SERVICES=$(docker-compose config --services)

# Loop through services, build, tag, and push images
for SERVICE in $SERVICES; do
  # Build the image for the service
  echo "Building image for service: $SERVICE"
  docker-compose build $SERVICE

  # Tag the image with commit hash and 'latest'
  IMAGE_NAME="${CONTAINER_REGISTRY_ENDPOINT}/${SERVICE}"
  echo "Tagging image: $IMAGE_NAME with $COMMIT_HASH and latest"
  docker tag $SERVICE:latest $IMAGE_NAME:$COMMIT_HASH
  docker tag $SERVICE:latest $IMAGE_NAME:latest

  # Push the image to the CONTAINER_REGISTRY_ENDPOINT
  echo "Pushing image: $IMAGE_NAME"
  docker push $IMAGE_NAME:$COMMIT_HASH
  docker push $IMAGE_NAME:latest
done
