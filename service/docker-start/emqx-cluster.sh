#!/usr/bin/env bash

#docker run -d --name emqx -p 18083:18083 -p 1883:1883 -p 4369:4369 -p 6000-6100:6000-6100 \
#    -e EMQX_NAME="emqx" \
#    -e EMQX_HOST="t.emqx.io" \
#    -e EMQX_LISTENER__TCP__EXTERNAL=1883 \
#    -e EMQX_JOIN_CLUSTER="emqx@t.emqx.io" \
#    emqx/emqx:latest


docker run -d --name emqx -p 18083:18083 -p 1883:1883 -p 4369:4369 -p 6000-6100:6000-6100 \
    -e EMQX_NAME="emqx" \
    -e EMQX_HOST="127.0.0.1" \
    -e EMQX_LISTENER__TCP__EXTERNAL=1883 \
    -e EMQX_JOIN_CLUSTER="emqx@127.0.0.1,emqx1@127.0.0.1,emqx2@127.0.0.1" \
    emqx/emqx:latest

docker run -d --name emqx1 -p 18084:18083 -p 1884:1883 -p 4370:4369 -p 6200-6300:6000-6100 \
    -e EMQX_NAME="emqx1" \
    -e EMQX_HOST="127.0.0.1" \
    -e EMQX_LISTENER__TCP__EXTERNAL=1883 \
    -e EMQX_JOIN_CLUSTER="emqx@127.0.0.1,emqx1@127.0.0.1,emqx2@127.0.0.1" \
    emqx/emqx:latest

docker run -d --name emqx2 -p 18085:18083 -p 1885:1883 -p 4371:4369 -p 6500-6600:6000-6100 \
    -e EMQX_NAME="emqx2" \
    -e EMQX_HOST="127.0.0.1" \
    -e EMQX_LISTENER__TCP__EXTERNAL=1883 \
    -e EMQX_JOIN_CLUSTER="emqx@127.0.0.1,emqx1@127.0.0.1,emqx2@127.0.0.1" \
    emqx/emqx:latest