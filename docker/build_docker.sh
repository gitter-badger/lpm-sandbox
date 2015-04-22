#!/bin/bash

echo "Creating docker image..."
sudo docker build -t gogo40/lpm_sandbox .

echo "Opening bash..."
IMG=gogo40/lpm_sandbox

XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth
xauth nlist :0 | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -

sudo docker run -p 6600 -P -i -t -v $XSOCK:$XSOCK $IMG
 