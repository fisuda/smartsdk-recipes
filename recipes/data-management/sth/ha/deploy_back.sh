#!/bin/bash
set -o allexport
. ./backend.env
set +o allexport
# docker network create -d overlay backend
docker stack deploy -c ../../../utils/mongodb/replica/docker-compose.yml ${STACK_NAME}
