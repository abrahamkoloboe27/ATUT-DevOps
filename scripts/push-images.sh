#!/bin/bash
# Push backend image to the registry

docker push ${CONTAINER_REGISTRY_ENDPOINT}/backend:${COMMIT_HASH}
docker push ${CONTAINER_REGISTRY_ENDPOINT}/backend:latest

# Push backend image to the registry

docker push ${CONTAINER_REGISTRY_ENDPOINT}/frontend:${COMMIT_HASH}
docker push ${CONTAINER_REGISTRY_ENDPOINT}/frontend:latest
