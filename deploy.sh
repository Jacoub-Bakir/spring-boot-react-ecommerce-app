#!/bin/bash
# Deploy MySQL
kubectl apply -f mysql-db/mysql-secret.yaml
kubectl apply -f mysql-db/mysql-deployment.yaml
kubectl apply -f mysql-db/mysql-service.yaml

# Deploy Redis
kubectl apply -f redis-cache/redis-secret.yaml
kubectl apply -f redis-cache/redis-deployment.yaml
kubectl apply -f redis-cache/redis-service.yaml

# Deploy Authentication Service
kubectl apply -f server/authentication-service/authentication-service-deployment.yaml
kubectl apply -f server/authentication-service/authentication-service-service.yaml

# Deploy Common Data Service
kubectl apply -f server/common-data-service/common-data-service-deployment.yaml
kubectl apply -f server/common-data-service/common-data-service-service.yaml

# Deploy Search Suggestion Service
kubectl apply -f server/search-suggestion-service/search-suggestion-service-deployment.yaml
kubectl apply -f server/search-suggestion-service/search-suggestion-service-service.yaml

# Deploy Payment Service
kubectl apply -f server/payment-service/payment-service-deployment.yaml
kubectl apply -f server/payment-service/payment-service-service.yaml

# Deploy React UI
kubectl apply -f client/react-ui-deployment.yaml
kubectl apply -f client/react-ui-service.yaml

# Wait for deployments to be ready
sleep 30

# Display deployment and pod status
kubectl get deployments
kubectl get pods
