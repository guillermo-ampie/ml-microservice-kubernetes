#!/usr/bin/env bash

CONTAINER_NAME="housing-prices-api"
VERSION=1.0
CONTAINER_PORT=80
HOST_PORT=8000
## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag ${CONTAINER_NAME}:${VERSION} .

# Step 2:
# List docker images
docker images

# Step 3:
# Run flask app
docker run -p ${HOST_PORT}:${CONTAINER_PORT} ${CONTAINER_NAME}:${VERSION}
