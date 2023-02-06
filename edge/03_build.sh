#!/usr/bin/env bash

set -x
set -e

for dir in single-user; do
    echo $dir
    cd $dir
    docker build . -t carbonplan/edge-$dir:latest
    docker build . -t carbonplan/edge-$dir:"$(date +"%Y.%m.%d")"

    cd ..
done
