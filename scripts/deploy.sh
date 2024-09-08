#!/bin/bash
# Deployment script executed via SSH

docker pull rg.fr-par.scw.cloud/atut-group-1/backend:latest
docker pull rg.fr-par.scw.cloud/atut-group-1/frontend:latest
echo "Docker images pulled successfully."

if [ -d "/home/${USERNAME}/app" ]; then
  rm -rf /home/${USERNAME}/app
fi
mkdir -p /home/${USERNAME}/app
echo "Directory created or recreated."

cd /home/${USERNAME}/app
git clone --branch test --single-branch https://github.com/abrahamkoloboe27/ATUT-DevOps.git .
echo "Repository cloned."
ls

echo "Docker Compose directory created and accessed."
docker compose pull
docker compose up -d --remove-orphans
docker system prune -f
docker ps -a
echo "Docker Compose up successfully."
