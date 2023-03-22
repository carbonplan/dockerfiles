#!/usr/bin/env bash

set -euxo pipefail
set -x
set -e

for dir in dask-worker prefect single-user; do
    echo $dir
    cd $dir
    docker build . -t carbonplan/main-$dir:latest
    cd ..
done
