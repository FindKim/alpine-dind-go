#!/usr/bin/env sh

set -e

# Base docker dind image
if [ -z $DOCKER_IMAGE ]; then
	DOCKER_IMAGE="docker:18.01-dind"
fi

# Alpine version
if [ -z $ALPINE_VERSION ]; then
	ALPINE_VERSION=3.6
fi

# Golang version
if [ -z $GOLANG_VERSION ]; then
	GOLANG_VERSION=1.9
fi

echo "Base docker image: $DOCKER_IMAGE \n\
Running with alpine $ALPINE_VERSION \n\
Installing go version $GOLANG_VERSION"
wget -O golang.zip https://github.com/docker-library/golang/archive/master.zip
unzip golang.zip
cp golang-master/$GOLANG_VERSION/alpine$ALPINE_VERSION/* .
sed -i "s/FROM alpine:$ALPINE_VERSION/FROM $DOCKER_IMAGE/" Dockerfile
