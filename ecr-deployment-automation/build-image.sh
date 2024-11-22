#!/bin/bash

# fail on any error
set -eu

# build the docker image
 docker build -t $IMAGE_TAG .

# run the docker container
 docker run -d --name myapp -p 8080:80 $IMAGE_TAG