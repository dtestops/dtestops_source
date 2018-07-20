#!/bin/bash

# Check to see if we need to build image
DOCKER_IMAGE_OUTPUT=$(docker images | grep dtestops/website)
if [ -z "$DOCKER_IMAGE_OUTPUT" ]
then
  docker build -t dtestops/website .
fi

# Build jekyll site
SRC=$(cd .. && pwd)
docker run --name jekyll --rm -v $SRC:/src/ -e jekyll-it dtestops/website

