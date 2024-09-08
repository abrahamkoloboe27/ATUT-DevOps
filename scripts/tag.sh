#!/bin/bash
# Tag Docker image for backend with commit hash

docker tag ${{ secrets.CONTAINER_REGISTRY_ENDPOINT }}/backend:latest ${{ secrets.CONTAINER_REGISTRY_ENDPOINT }}/backend:${COMMIT_HASH}
# Tag Docker image for frontend with commit hash

docker tag ${{ secrets.CONTAINER_REGISTRY_ENDPOINT }}/frontend:latest ${{ secrets.CONTAINER_REGISTRY_ENDPOINT }}/frontend:${COMMIT_HASH}
