#!/usr/bin/env bash

set -x
set -e


docker build . -t carbonplan/edge-single-user:latest
docker build . -t carbonplan/edge-single-user:"$(date +"%Y.%m.%d")"
