#!/bin/sh

itShouldCheckThatAllInstalledSoftwareExists() {
    doesCommandExist python2
    doesCommandExist ruby
    doesCommandExist gcc
    doesCommandExist make
}

doesCommandExist() {
    if ! [ -x "$(command -v $1)" ]; then
      echo "Error: $1 is not installed." >&2
      exit 1
    fi
}

itShouldCheckThatAllInstalledSoftwareExists
