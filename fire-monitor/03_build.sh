#!/usr/bin/env bash

set -x
set -e

for dir in prefect single-user; do
    echo $dir
    cd $dir
    docker build . -t carbonplan/fire-monitor-$dir:latest
    cd ..
done
