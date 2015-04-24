#!/bin/bash

echo "Opening bash..."
IMG=gogo40/lpm_sandbox

XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth
xauth nlist :0 | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -

sudo docker run -p 6600 -P -i -t -v $XSOCK:$XSOCK $IMG $1

