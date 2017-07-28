#!/bin/bash

docker run \
    -d \
    --name ay-gocd-agent3 \
    -v /root/AYData/GoCD/GoHome:/home/go:z \
    -e GO_SERVER_URL=https://172.17.0.3:8154/go \
    -e AGENT_AUTO_REGISTER_KEY="35d07d00-6ef0-459a-9ceb-3845a3039717" \
    -e AGENT_AUTO_REGISTER_HOSTNAME=agent-docker \
    ayjiayou/gocd-agent-docker
