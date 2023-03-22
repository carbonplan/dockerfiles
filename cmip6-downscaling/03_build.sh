#!/usr/bin/env bash

set -euxo pipefail
set -x
set -e

for dir in single-user prefect; do
    echo $dir
    cd $dir
    docker build . -t carbonplan/cmip6-downscaling-$dir:latest
    cd ..
done
