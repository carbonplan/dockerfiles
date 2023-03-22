#!/usr/bin/env bash

set -euxo pipefail
set -x
set -e

for dir in single-user; do
    echo $dir
    docker push carbonplan/edge-$dir:latest
    docker push carbonplan/edge-$dir:"$(date +"%Y.%m.%d")"

done
