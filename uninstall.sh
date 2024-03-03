#! /bin/bash

if [[ $EUID -ne 0 ]]
then
  echo "Script requires root privileges to run"
  exit
fi

# Tear down the containers, volumes and network. This will allow for the images to be removed
docker-compose down

# Get all the image IDs made by Docker Compose, to make the image-space clean
# This allows for the contents of the images to be altered if any changes are required
IMGID=$(docker images -a | grep "300430storage_*" | awk '{print $3}')

# Check if there are any images IDs or not.
if [[ ! -z $IMGID ]]
then
  docker rmi -f $IMGID
else
  # inform the user they've already uninstalled, no need to do it twice!
  echo "There are no images to wipe, you have already uninstalled the infrastructure."
fi

