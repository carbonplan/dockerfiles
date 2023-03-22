#!/usr/bin/env bash

set -euxo pipefail
for dir in single-user; do
    echo $dir
    mkdir -p $dir
    cp ../templates/Dockerfile $dir
    cp ../templates/start $dir
done
