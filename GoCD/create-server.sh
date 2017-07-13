#!/bin/bash
docker run \
    -d -p 81:8153 -p 82:8154 \
    -v /root/AYData/GoCD/Server:/godata:z \
    -v /root/AYData/GoCD/GoHome:/home/go:z \
    --name ay-gocd-server \
    gocd/gocd-server:v17.5.0
