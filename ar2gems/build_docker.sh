#!/bin/bash

echo "Creating docker image..."
sudo docker build --rm=true -t gogo40/lpm-sandbox:latest .
