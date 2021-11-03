#!/usr/bin/env bash

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
    -p osx-64 -p linux-64 \
    --filename-template "prefect/conda-{platform}.lock"
