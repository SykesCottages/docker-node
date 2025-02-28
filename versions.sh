#!/bin/bash

VERSIONS=($(find . -type d -regex '\.*/[0-9]+' | sort | sed 's/\.\///'))

for VERSION in "${VERSIONS[@]}"
do
  docker run --pull always -it sykescottages/node:${VERSION} bash -c "apt -qq list | tail -n+2" | tail -n+4 > $VERSION/aptitude-itinerary
done
