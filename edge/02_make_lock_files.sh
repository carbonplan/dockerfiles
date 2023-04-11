#!/usr/bin/env bash

set -euxo pipefail

echo "single-user"
conda-lock \
    -f conda-envs/base.yaml \
    -p linux-64 \
    -k explicit \
    --filename-template "single-user/conda-linux-64.lock"



for dir in single-user; do
    ../list_packages.sh $dir/conda-linux-64.lock | sort > $dir/linux-64-packages.txt
done
