#!/bin/bash
set -e
docker build -t multivac-worker -f Dockerfile-worker .
docker build -t multivac-web -f Dockerfile-web .

