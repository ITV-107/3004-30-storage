#! /bin/bash

if [[ $EUID -ne 0 ]]
then
  echo "Script requires root privileges to run"
  exit
fi

# Install docker and docker compose.
apt-get install -y docker.io docker-compose

# Enable the use of the uninstallation script.
chmod +x ./uninstall.sh

# Pull the base image for load balancer
docker pull nginx:alpine

# Pull the base image for backend web server.
docker pull php:fpm

# Run docker compose using the YAML in the root directory.
# This regularly updates the images as well.
docker-compose up -d --build



