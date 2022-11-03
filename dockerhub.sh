#!/bin/bash

LATEST_VERSION=18

# Validate the container passes our tests
./test.sh

# You need to provide your own creds because #security
docker login

docker build --no-cache -t sykescottages/node:base base
docker push sykescottages/node:base

VERSIONS=( 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 )
for VERSION in "${VERSIONS[@]}"
do
  docker build --no-cache -t sykescottages/node:${VERSION} $VERSION
  docker push sykescottages/node:${VERSION}
  # Tagging latest version
  if [[ "$LATEST_VERSION" == "$VERSION" ]]; then
    docker tag sykescottages/node:${VERSION} sykescottages/node:latest
    docker push sykescottages/node:latest
    docker rmi sykescottages/node:latest
  fi
  docker rmi sykescottages/node:${VERSION}
done

docker rmi sykescottages/node:base