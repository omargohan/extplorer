#!/bin/bash
if [ "x$1" == "x" ]; then
  CACHE="--no-cache"
else
  CACHE=""
fi

DATE=$(date +%Y%m%d.%H%M)

echo "Building docker-extplorer:trusty.$DATE"
docker build $CACHE -t="stormerider/docker-extplorer:trusty.$DATE" . && \
echo "" && \
echo "Pushing docker-extplorer:trusty.$DATE" && \
docker push stormerider/docker-extplorer:trusty.$DATE

echo ""
echo "Building docker-extplorer:latest"
docker build $CACHE -t="stormerider/docker-extplorer:latest" . && \
echo "" && \
echo "Pushing docker-extplorer:latest" && \
docker push stormerider/docker-extplorer:latest
