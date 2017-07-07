#!/bin/bash

docker run \
    -d -P\
    -v /root/AYData/GoCD/Agent2:/godata:z \
    -v /root:/home/go:z \
    -e GO_SERVER_URL=https://172.17.0.3:8154/go \
    -e AGENT_AUTO_REGISTER_KEY="35d07d00-6ef0-459a-9ceb-3845a3039717" \
    -e AGENT_AUTO_REGISTER_HOSTNAME=agent2 \
    --name ay-gocd-agent2 \
    ayjiayou/gocd-agent-normal-server
    #ayjiayou/gocd-agent-go
    #gocd/gocd-agent-alpine-3.5:v17.5.0
