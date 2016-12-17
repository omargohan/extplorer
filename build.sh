#!/bin/bash
DATE=$(date +%Y%m%d.%H%M)
echo "Building docker-extplorer:trusty.$DATE"
docker build --no-cache -t="stormerider/docker-extplorer:trusty.$DATE" .
echo ""
echo "Building docker-extplorer:latest"
docker build -t="stormerider/docker-extplorer:latest" .
echo ""
echo "Pushing docker-extplorer:trusty.$DATE"
docker push stormerider/docker-extplorer:trusty.$DATE
echo ""
echo "Pushing docker-extplorer:latest"
docker push stormerider/docker-extplorer:latest
echo ""
