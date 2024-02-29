#! /bin/bash

if [[ $EUID -ne 0 ]]
then
  echo "Script requires root privileges to run"
  exit
fi

echo "Successful import."

# Install docker and docker compose.
apt-get install -y docker.io docker-compose

# Pull the base image for load balancer
docker pull nginx:alpine

# Pull the base image for backend web server.
docker pull php:fpm

# Run docker compose with the following scripts.
docker-compose up -d

