#!/bin/sh

export DUID=$(id -u)
export DGID=$(id -g)
export DUSR=$(whoami)

docker compose -f ECB_T8_T113_dockenv/docker-compose.yml run --rm devenv
