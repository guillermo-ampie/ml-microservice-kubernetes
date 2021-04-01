#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Set vars
DOCKER_HUB_ID="gampie" #TODO: Use explicit DockerHub registry URI
DOCKER_REPOSITORY="housing-prices-api"
DEPLOYMENT_NAME=${DOCKER_REPOSITORY}
CONTAINER_PORT=80
HOST_PORT=8000
VERSION=1.0

# Step 1:
# This is your Docker ID/path
dockerpath=${DOCKER_HUB_ID}/${DOCKER_REPOSITORY}:${VERSION}

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment housing-prices-api --image=${dockerpath} &&
    kubectl expose deployment/${DEPLOYMENT_NAME} --type="NodePort" --port ${CONTAINER_PORT}

# Step 3:
# List kubernetes pods
echo
echo "Listing pods"
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward service/${DEPLOYMENT_NAME} ${HOST_PORT}:${CONTAINER_PORT}
