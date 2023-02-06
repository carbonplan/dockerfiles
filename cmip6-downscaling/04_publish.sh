#!/usr/bin/env bash

set -x
set -e

for dir in prefect single-user; do
    echo $dir

    docker tag carbonplan/cmip6-downscaling-$dir:latest carbonplan/cmip6-downscaling-$dir:"$(date +"%Y.%m.%d")"
    docker push carbonplan/cmip6-downscaling-$dir:latest
    docker push carbonplan/cmip6-downscaling-$dir:"$(date +"%Y.%m.%d")"
done
