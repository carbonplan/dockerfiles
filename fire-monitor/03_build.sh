#!/usr/bin/env bash

set -x
set -e

for dir in prefect single-user; do
    echo $dir
    cd $dir
    docker build . -t carbonplan/cmip6-downscaling-$dir:latest
    cd ..
done
