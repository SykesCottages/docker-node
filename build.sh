#!/bin/bash

VERSION=$1
LATEST_VERSION=$2

docker build --no-cache -t sykescottages/node:${VERSION} $VERSION
docker push sykescottages/node:${VERSION}
# Tagging latest version
if [[ "$LATEST_VERSION" == "$VERSION" ]]; then
  docker tag sykescottages/node:${VERSION} sykescottages/node:latest
  docker push sykescottages/node:latest
  docker rmi sykescottages/node:latest
fi
docker rmi sykescottages/node:${VERSION}
