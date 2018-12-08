#! /bin/sh

set -e

# Wait for PostgreSQL
until nc -z -v -w30 db 5432
do
  echo 'Waiting for PostgreSQL...'
  sleep 1
done
echo "PostgreSQL is up and running"
