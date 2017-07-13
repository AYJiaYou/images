#!/bin/bash

function usage() {
    echo "Usage: "
    echo "  create-agent [--help|-h]"
    echo "  create-agent [--env=(go)] [--idx=N]"
    echo ""
    echo "Do a fully dump(structure&data) of the specified database to a date-named file."
    echo ""
    echo "  --env=()"
    echo "      This"
    echo 
    echo "lfree 2017-06-28 08:55:00"
    echo "xh.dreamlover@gmail.com xh@ayjiayou.com"
}

# deal usage print
# TODO

# deal index param
# TODO

# deal env param
# TODO


docker run \
    -d \
    -v /root/AYData/GoCD/Agent1:/godata:z \
    -v /root/AYData/GoCD/GoHome:/home/go:z \
    -e GO_SERVER_URL=https://172.17.0.3:8154/go \
    -e AGENT_AUTO_REGISTER_KEY="35d07d00-6ef0-459a-9ceb-3845a3039717" \
    -e AGENT_AUTO_REGISTER_HOSTNAME=agent1 \
    --name ay-gocd-agent1 \
    ayjiayou/gocd-agent-go
    #gocd/gocd-agent-alpine-3.5:v17.5.0
