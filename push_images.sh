#!/bin/bash

# Log in to Docker Hub
docker login

# Push each tagged image
docker push bakirjacoub/spring-boot-react-ecommerce-app-master-react-ui:latest
docker push bakirjacoub/spring-boot-react-ecommerce-app-master-search-suggestion-service:latest
docker push bakirjacoub/spring-boot-react-ecommerce-app-master-common-data-service:latest
docker push bakirjacoub/spring-boot-react-ecommerce-app-master-authentication-service:latest
docker push bakirjacoub/spring-boot-react-ecommerce-app-master-payment-service:latest
docker push bakirjacoub/mysql:8
docker push bakirjacoub/redis:alpine

echo "Images pushed to Docker Hub successfully."
