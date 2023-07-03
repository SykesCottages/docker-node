#!/bin/bash

LATEST_VERSION=20

# You need to provide your own creds because #security
docker login >> /dev/null 2>&1 &

./build-base.sh >> /dev/null 2>&1 &

VERSIONS=( 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 )
for VERSION in "${VERSIONS[@]}"
do
  ./build.sh $VERSION $LATEST_VERSION >> /dev/null 2>&1 &
done

wait

docker rmi sykescottages/node:base >> /dev/null 2>&1 &
