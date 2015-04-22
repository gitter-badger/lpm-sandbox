#!/bin/bash

echo "Creating docker image..."
sudo docker build -t gogo40/lpm_sandbox .

echo "Opening bash..."
sudo docker run -t -i gogo40/lpm_sandbox /bin/bash