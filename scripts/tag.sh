#!/bin/bash
# Tag Docker image for backend with commit hash

docker tag ${CONTAINER_REGISTRY_ENDPOINT}/backend:latest ${CONTAINER_REGISTRY_ENDPOINT}/backend:${COMMIT_HASH}
# Tag Docker image for frontend with commit hash

docker tag ${CONTAINER_REGISTRY_ENDPOINT}/frontend:latest ${CONTAINER_REGISTRY_ENDPOINT}/frontend:${COMMIT_HASH}
