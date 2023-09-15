#!/bin/bash

LATEST_VERSION=20

# You need to provide your own creds because #security
docker login >> /dev/null 2>&1

./build-base.sh >> /dev/null 2>&1

VERSIONS=($(find . -type d -regex '\.*/[0-9]+' | sort | sed 's/\.\///'))
for VERSION in "${VERSIONS[@]}"
do
  ./build.sh $VERSION $LATEST_VERSION >> /dev/null 2>&1 &
done

wait

docker rmi sykescottages/node:base >> /dev/null 2>&1
