#!/usr/bin/env bash

set -euxo pipefail

echo "single-user"
conda-lock --version
conda --version
conda-lock \
    -f conda-envs/base.yaml \
    -p linux-64 \
    --lockfile "single-user/conda-linux-64.lock"
