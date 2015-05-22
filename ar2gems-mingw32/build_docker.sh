#!/bin/bash

echo "Creating docker image..."
docker build -t gogo40/lpm-sandbox:ar2gems-mingw32 .
