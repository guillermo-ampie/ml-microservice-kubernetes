#!/usr/bin/env bash

DEPLOYMENT_NAME="housing-prices-api"

# Remove service & deployment
echo "Deleting service: ${DEPLOYMENT_NAME}"
kubectl delete services ${DEPLOYMENT_NAME}

echo "Deleting deployment: ${DEPLOYMENT_NAME}"
kubectl delete deployments ${DEPLOYMENT_NAME}

# Show cluster's resources
echo
kubectl get services
kubectl get deployments
kubectl get pods
