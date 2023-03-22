#!/usr/bin/env bash

set -euxo pipefail

echo "single-user"
conda-lock --version
conda --version
conda-lock \
    -f conda-envs/base.yaml \
    -p linux-64 \
    --filename-template "single-user/conda-{platform}.lock"


for dir in single-user; do
    ../list_packages.sh $dir/conda-linux-64.lock | sort > $dir/linux-64-packages.txt
done
