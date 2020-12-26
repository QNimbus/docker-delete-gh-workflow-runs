#!/bin/bash

VERSION=0.0.1
IMAGE=qnimbus/delete-gh-workflow-runs

export DOCKER_CLI_EXPERIMENTAL="enabled"

# Build latest
docker build -t ${IMAGE}:${VERSION} --build-arg VERSION="${VERSION}" --compress --no-cache --platform linux/amd64 . || exit 1

# If the build was successful, then we can tag with current version
docker tag ${IMAGE}:${VERSION} ${IMAGE}:latest
