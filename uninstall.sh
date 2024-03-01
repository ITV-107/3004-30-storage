#! /bin/bash

if [[ $EUID -ne 0 ]]
then
  echo "Script requires root privileges to run"
  exit
fi

# Tear down the containers, volumes and network. This will allow for the images to be removed
docker-compose down

# Remove all the images made by Docker Compose, to make the image-space clean
# This allows for the contents of the images to be altered if any changes are required
docker images -a | grep "300430storage_*" | awk '{print $3'} | xargs docker rmi -f


