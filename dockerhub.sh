#!/bin/bash

LATEST_VERSION=20

# You need to provide your own creds because #security
docker login >>/dev/null 2>&1

docker buildx build \
  --platform linux/amd64,linux/arm64,linux/arm/v7,linux/arm64/v8 \
  --quiet \
  --no-cache \
  --push \
  -t sykescottages/node:base \
  base

VERSIONS=($(find . -type d -regex '\.*/[0-9]+' | sort | sed 's/\.\///'))
for VERSION in "${VERSIONS[@]}"; do
  docker buildx build \
    --platform linux/amd64,linux/arm64,linux/arm/v7,linux/arm64/v8 \
    --quiet \
    --no-cache \
    --push \
    -t sykescottages/node:${VERSION} \
    $VERSION >> /dev/null 2>&1 &
done

wait

docker buildx build \
  --platform linux/amd64,linux/arm64,linux/arm/v7,linux/arm64/v8 \
  --quiet \
  --push \
  -t sykescottages/node:latest \
  $LATEST_VERSION >> /dev/null 2>&1
