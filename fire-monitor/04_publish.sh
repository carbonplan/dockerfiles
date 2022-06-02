#!/usr/bin/env bash

set -x
set -e

for dir in prefect single-user; do
    echo $dir

    docker tag carbonplan/fire-monitor-$dir:latest carbonplan/fire-monitor-$dir:$(date +"%Y.%m.%d")
    docker push carbonplan/fire-monitor-$dir:latest
    docker push carbonplan/fire-monitor-$dir:$(date +"%Y.%m.%d")
done
