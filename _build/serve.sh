#!/bin/bash
SRC=$(cd .. && pwd)
docker run --name jekyll --rm -p 4000:4000 -v $SRC:/src/ -e jekyll_command=serve -it dtestops/website
