#!/usr/bin/env bash

for dir in dask-worker prefect single-user; do
    echo $dir
    mkdir -p $dir
    cp ../templates/Dockerfile $dir
    cp ../templates/start $dir
done
