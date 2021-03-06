#!/bin/bash

echo "Stoping all containers and images..."
sudo docker stop --time=5 $(sudo docker ps -a -q)

echo "Deleting all containers and images..."
#how to delete all containers and images
# Delete all containers
sudo docker rm   $(sudo docker ps -a -q)
# Delete all images
sudo docker rmi  $(sudo docker images -q)
