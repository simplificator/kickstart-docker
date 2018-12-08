#!/usr/bin/env bash
set -e

docker-compose -f docker-compose.test.yml build
docker-compose -f docker-compose.test.yml run --rm app sh -c "./docker/wait-for-services.sh && bundle exec rake db:create test"
