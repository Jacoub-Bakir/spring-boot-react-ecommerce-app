#!/bin/bash

# Tag each image
docker tag spring-boot-react-ecommerce-app-master-react-ui:latest bakirjacoub/spring-boot-react-ecommerce-app-master-react-ui:latest
docker tag spring-boot-react-ecommerce-app-master-search-suggestion-service:latest bakirjacoub/spring-boot-react-ecommerce-app-master-search-suggestion-service:latest
docker tag spring-boot-react-ecommerce-app-master-common-data-service:latest bakirjacoub/spring-boot-react-ecommerce-app-master-common-data-service:latest
docker tag spring-boot-react-ecommerce-app-master-authentication-service:latest bakirjacoub/spring-boot-react-ecommerce-app-master-authentication-service:latest
docker tag spring-boot-react-ecommerce-app-master-payment-service:latest bakirjacoub/spring-boot-react-ecommerce-app-master-payment-service:latest
docker tag mysql:8 bakirjacoub/mysql:8
docker tag redis:alpine bakirjacoub/redis:alpine

echo "Images tagged successfully."
