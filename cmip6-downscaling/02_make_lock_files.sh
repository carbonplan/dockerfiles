#!/usr/bin/env bash

set -euxo pipefail

echo "single-user"
conda-lock \
    -f conda-envs/base.yaml \
    -f conda-envs/prefect.yaml \
    -f conda-envs/jupyterlab.yaml \
    -f conda-envs/analysis.yaml \
    -f conda-envs/dask.yaml \
    -p osx-64 -p linux-64 \
    --filename-template "single-user/conda-{platform}.lock"

echo "dask-worker"
conda-lock \
    -f conda-envs/base.yaml \
    -f conda-envs/analysis.yaml \
    -f conda-envs/dask.yaml \
    -p osx-64 -p linux-64 \
    --filename-template "dask-worker/conda-{platform}.lock"

echo "prefect"
conda-lock \
    -f conda-envs/base.yaml \
    -f conda-envs/prefect.yaml \
    -f conda-envs/analysis.yaml \
    -f conda-envs/dask.yaml \
    -p osx-64 -p linux-64 \
    --filename-template "prefect/conda-{platform}.lock"

for dir in dask-worker prefect single-user; do
    ../list_packages.sh $dir/conda-linux-64.lock | sort > $dir/linux-64-packages.txt
    ../list_packages.sh $dir/conda-osx-64.lock | sort > $dir/osx-64-packages.txt
done
