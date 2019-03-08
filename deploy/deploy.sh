#!/usr/bin/env bash
set -e

APP_NAME=kickstart
STACK_NAME=$APP_NAME
REPOSITORY=135594858514.dkr.ecr.eu-central-1.amazonaws.com/simplificator/kickstart
IMAGE=$REPOSITORY:$TAG
AWS_DEFAULT_REGION=eu-central-1

echo "Deploying $APP_NAME..."

alias aws='docker run --rm $(tty &>/dev/null && echo "-i") -e "AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}" -e "AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}" -e "AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION}" -v "$(pwd):/project" mesosphere/aws-cli'

echo " * Docker prune..."
docker system prune -af

echo " * Docker login..."
aws ecr get-login --no-include-email | bash

echo " * Pull new image..."
# this is just to check whether docker login was successful. stack deploy will pull anyway
docker pull $IMAGE

# DOCKER INITIALIZATION
if docker node ls > /dev/null 2>&1; then
  echo " * Swarm already initialized"
else
  echo " * Docker swarm initializing.."
  docker swarm init
fi

echo " * Deploying..."

IMAGE=$IMAGE docker stack deploy --compose-file docker-compose.yml $STACK_NAME

echo "Deploying $APP_NAME finished."
