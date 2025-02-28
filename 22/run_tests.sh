#!/bin/sh

itShouldCheckThatAllInstalledSoftwareExists() {
    doesCommandExist node
    doesCommandExist npm
}

itShouldMatchTheDesiredVersions() {
  doesMatchVersion node v22.14.0
  doesMatchVersion npm 10.9.2
}

doesCommandExist() {
    if ! [ -x "$(command -v $1)" ]; then
      echo "Error: $1 is not installed." >&2
      exit 1
    fi
}

doesMatchVersion() {
    VERSION=$($1 -v|grep -i "$2")
    if [ -z "$VERSION" ]; then
      echo "Error: $1 version $2 is not found, found $($1 -v) instead." >&2
      exit 1
    fi
}

itShouldCheckThatAllInstalledSoftwareExists
itShouldMatchTheDesiredVersions