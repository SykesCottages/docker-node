#!/bin/bash

docker-compose -f base/docker-compose.test.yml build --no-cache && \
    docker-compose -f base/docker-compose.test.yml run --rm sut

VERSIONS=($(find . -type d -regex '\.*/[0-9]+' | sort | sed 's/\.\///'))
for VERSION in "${VERSIONS[@]}"
do
  docker-compose -f $VERSION/docker-compose.test.yml build --no-cache && \
    docker-compose -f $VERSION/docker-compose.test.yml run --rm sut
done
