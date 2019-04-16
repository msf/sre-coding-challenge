#!/bin/bash
set -e
docker build -t build-base -f Dockerfile-base .
docker build -t multivac -f Dockerfile .
docker build -t multivac-web -f Dockerfile-web .
docker build -t multivac-worker -f Dockerfile-worker .
docker build -t multivac-nginx -f Dockerfile-nginx .
docker run -it multivac-nginx nginx -t

