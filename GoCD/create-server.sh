#!/bin/bash
docker run \
    -d -p 81:8153 -p 82:8154 \
    -v /root/AYData/GoCD/Server:/godata \
    -v /root:/home/go \
    --name ay-gocd-server \
    gocd/gocd-server:v17.5.0
