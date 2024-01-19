#!/bin/bash

export DOCKER_CLI_EXPERIMENTAL=enabled
LATEST_VERSION="20"

docker login >>/dev/null 2>&1

TAG="sykescottages/node:base"
docker manifest rm $TAG
docker manifest create $TAG \
  --amend "$TAG-amd64" \
  --amend "$TAG-arm64"
docker manifest push $TAG

VERSIONS=($(find . -type d -regex '\.*/[0-9]+' | sort | sed 's/\.\///'))
for VERSION in "${VERSIONS[@]}"; do
  TAG="sykescottages/node:${VERSION}"
  docker manifest rm $TAG
  docker manifest create $TAG \
    --amend "$TAG-amd64" \
    --amend "$TAG-arm64"
  docker manifest push $TAG
done

TAG="sykescottages/node:latest"
LATEST_TAG="sykescottages/node:$LATEST_VERSION"
docker manifest rm $TAG
docker manifest create $TAG \
  --amend "$LATEST_TAG-amd64" \
  --amend "$LATEST_TAG-arm64"
docker manifest push $TAG
