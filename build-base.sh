#!/bin/bash

docker build --no-cache -t sykescottages/node:base base
docker push sykescottages/node:base
