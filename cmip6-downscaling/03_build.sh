#!/usr/bin/env bash

set -x
set -e

for dir in single-user prefect dask-worker; do
    echo $dir
    cd $dir
    docker build . -t carbonplan/cmip6-downscaling-$dir:latest
    cd ..
done
