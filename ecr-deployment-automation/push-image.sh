#!/bin/bash

# fail on any error
set -eu


aws ecr create-repository --repository-name ecr-deployment --region eu-central-1

aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 284526353281.dkr.ecr.eu-central-1.amazonaws.com

docker tag ecr-deployment:latest 284526353281.dkr.ecr.eu-central-1.amazonaws.com/ecr-deployment:latest

docker push 284526353281.dkr.ecr.eu-central-1.amazonaws.com/ecr-deployment:latest