#!/bin/bash

IMG=gogo40/lpm_sandbox
XSOCK=/tmp/.X11-unix/X0
sudo docker run -v $XSOCK:$XSOCK $IMG