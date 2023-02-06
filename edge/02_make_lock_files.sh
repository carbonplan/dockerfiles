#!/usr/bin/env bash

echo "single-user"
conda-lock \
    -f conda-envs/base.yaml \
    -p osx-64 -p linux-64 \
    --filename-template "single-user/conda-{platform}.lock"


for dir in single-user; do
    ../list_packages.sh $dir/conda-linux-64.lock | sort > $dir/linux-64-packages.txt
    ../list_packages.sh $dir/conda-osx-64.lock | sort > $dir/osx-64-packages.txt
done
