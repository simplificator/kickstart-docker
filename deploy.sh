#!/usr/bin/env bash
set -e

IMAGE=135594858514.dkr.ecr.eu-central-1.amazonaws.com/simplificator/kickstart:master

echo Docker login...

echo Pull new image...

docker pull $IMAGE

echo Kill all running containers...

# docker service stop...
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)

echo Deploying...

docker service create -d -p 80:80 $IMAGE

echo Deploy finished.
