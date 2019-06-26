#!/usr/bin/env bash

docker run -d --name emqx31 \
    -p 1883:1883 -p 8083:8083 -p 8883:8883 -p 8084:8084 -p 18083:18083 \
    emqx/emqx:v3.1.0
