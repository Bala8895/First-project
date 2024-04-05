#!/bin/bash


#build the Docker image
docker build -t project:v1 .
docker images
docker-compose down || true 
# Building Docker container
#docker-compose up -d
