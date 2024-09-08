#!/bin/bash
# Build Docker image for backend

docker build ./backend -t ${CONTAINER_REGISTRY_ENDPOINT}/backend:latest
