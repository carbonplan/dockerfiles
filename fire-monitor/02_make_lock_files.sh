#!/usr/bin/env bash

set -euxo pipefail
echo "single-user"
conda-lock \
    -f conda-envs/base.yaml \
    -f conda-envs/prefect.yaml \
    -f conda-envs/jupyterlab.yaml \
    -f conda-envs/analysis.yaml \
    -f conda-envs/dask.yaml \
    -p linux-64 \
    -k explicit \
    --filename-template "single-user/conda-linux-64.lock"

echo "prefect"
conda-lock \
    -f conda-envs/base.yaml \
    -f conda-envs/prefect.yaml \
    -f conda-envs/analysis.yaml \
    -f conda-envs/dask.yaml \
    -p linux-64 \
    -k explicit \
    --filename-template "prefect/conda-linux-64.lock"

for dir in prefect single-user; do
    ../list_packages.sh $dir/conda-linux-64.lock | sort > $dir/linux-64-packages.txt
done
