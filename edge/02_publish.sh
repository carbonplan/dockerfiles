#!/usr/bin/env bash

set -x
set -e

docker push carbonplan/edge-single-user:latest
docker push carbonplan/edge-single-user:"$(date +"%Y.%m.%d")"
