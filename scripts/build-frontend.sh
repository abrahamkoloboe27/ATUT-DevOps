#!/bin/bash
# Build Docker image for backend

docker build ./backend -t ${{ secrets.CONTAINER_REGISTRY_ENDPOINT }}/frontend:latest
