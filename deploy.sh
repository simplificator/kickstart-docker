#!/usr/bin/env bash
set -e

APP_NAME=kickstart
STACK_NAME=$APP_NAME
REGISTRY=135594858514.dkr.ecr.eu-central-1.amazonaws.com/simplificator
IMAGE=$APP_NAME:master
AWS_DEFAULT_REGION=eu-central-1

echo "Deploying $APP_NAME..."

alias aws='docker run --rm $(tty &>/dev/null && echo "-i") -e "AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}" -e "AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}" -e "AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION}" -v "$(pwd):/project" mesosphere/aws-cli'

echo " * Docker login..."
aws ecr get-login --no-include-email | bash

echo " * Pull new image..."
# this is just to check whether docker login was successful. stack deploy will pull anyway
docker pull $REGISTRY/$IMAGE

# DOCKER INITIATION
if docker node ls > /dev/null 2>&1; then
  echo " * Swarm already initialized"
else
  echo " * Docker swarm initializing.."
  docker swarm leave
  docker swarm init
fi

if docker stack ps $STACK_NAME; then
  echo " * Remove old deployment..."
  docker stack rm $STACK_NAME
fi

echo " * Deploying..."

REGISTRY=$REGISTRY docker stack deploy --compose-file docker-compose.yml $STACK_NAME

echo "Deploying $APP_NAME finished."
