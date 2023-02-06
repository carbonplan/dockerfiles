#!/usr/bin/env bash

set -x
set -e

for dir in single-user; do
    echo $dir
    cd $dir
    docker build . -t carbonplan/main-$dir:latest
    cd ..
done
