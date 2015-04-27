#!/bin/bash

echo "Opening bash..."
IMG=gogo40/lpm-sandbox:latest

XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth
xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -

sudo docker run --rm -p 6600 -P -i -t -v $XSOCK:$XSOCK $IMG $1

