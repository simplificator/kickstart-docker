#! /bin/sh

set -e

./docker/wait-for-services.sh
./docker/prepare-db.sh
bundle exec puma -C config/puma.rb
