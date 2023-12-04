#!/bin/bash

VERSION=$1
ARCH=$2

TAG="sykescottages/node:${VERSION}-${ARCH}"

docker build --quiet --no-cache -t $TAG $VERSION
docker push $TAG
