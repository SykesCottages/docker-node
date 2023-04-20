#!/bin/bash

docker-compose -f base/docker-compose.test.yml build --no-cache && \
    docker-compose -f base/docker-compose.test.yml run --rm sut

VERSIONS=( 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 )
for VERSION in "${VERSIONS[@]}"
do
  docker-compose -f $VERSION/docker-compose.test.yml build --no-cache && \
    docker-compose -f $VERSION/docker-compose.test.yml run --rm sut
done
