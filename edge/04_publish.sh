#!/usr/bin/env bash

set -x
set -e

for dir in single-user; do
    echo $dir
    docker push carbonplan/main-$dir:latest
done
