#!/usr/bin/env bash

mkdir -p single-user
conda-lock \
    -f conda-envs/base.yaml \
    -f conda-envs/prefect.yaml \
    -f conda-envs/jupyterlab.yaml \
    -f conda-envs/analysis.yaml \
    -f conda-envs/dask.yaml \
    -p osx-64 -p linux-64 \
    --filename-template "single-user/conda-{platform}.lock"
cp ../templates/DockerFile single-user/

mkdir -p dask-worker
conda-lock \
    -f conda-envs/base.yaml \
    -f conda-envs/analysis.yaml \
    -f conda-envs/dask.yaml \
    -p osx-64 -p linux-64 \
    --filename-template "dask-worker/conda-{platform}.lock"
cp ../templates/DockerFile dask-worker/

mkdir -p prefect
conda-lock \
    -f conda-envs/base.yaml \
    -f conda-envs/prefect.yaml \
    -p osx-64 -p linux-64 \
    --filename-template "prefect/conda-{platform}.lock"
cp ../templates/DockerFile prefect/
