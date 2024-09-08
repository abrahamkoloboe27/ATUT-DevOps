#!/bin/bash
# Push backend image to the registry

docker push ${{ secrets.CONTAINER_REGISTRY_ENDPOINT }}/backend:${COMMIT_HASH}
docker push ${{ secrets.CONTAINER_REGISTRY_ENDPOINT }}/backend:latest
#!/bin/bash
# Push backend image to the registry

docker push ${{ secrets.CONTAINER_REGISTRY_ENDPOINT }}/frontend:${COMMIT_HASH}
docker push ${{ secrets.CONTAINER_REGISTRY_ENDPOINT }}/frontend:latest
