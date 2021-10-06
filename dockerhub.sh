#!/bin/bash

# Validate the container passes our tests
./test.sh

# You need to provide your own creds because #security
docker login

VERSIONS=( 4 5 6 7 8 9 10 11 12 13 14 15 16 )
for VERSION in "${VERSIONS[@]}"
do
  docker build --no-cache -t sykescottages/node:${VERSION} $VERSION
  docker push sykescottages/node:${VERSION}
done
