#!/usr/bin/env bash
#USAGE: bash run.sh

set -e

docker build -t universal -f ./docker/Dockerfile .
nvidia-docker run -it --name universal -p 8888:8888 -v $PWD/python:/work universal
