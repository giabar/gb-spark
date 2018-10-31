#!/bin/bash

set -e

NAME=spark

build() {
    TAG=$1
    IMAGE=giabar/gb-$NAME:$TAG
    cd $([ -z "$2" ] && echo "./$TAG" || echo "$2")
    echo '--------------------------' building $IMAGE in $(pwd)
    docker build -t $IMAGE .
    cd -
}

build base
build master
build worker
build submit
