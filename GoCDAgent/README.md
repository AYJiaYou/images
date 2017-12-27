### GoCD Agent 

#### Included environments
* Golang
* MySQL
* Ansible

#### Exported ports
* 8080~8089

#### Example

    docker run \
        -d \
        -p 8080:8080 -p 8081:8081 -p 8082:8082 -p 8083:8083 -p 8084:8084 \
        -p 8085:8085 -p 8086:8086 -p 8087:8087 -p 8088:8088 -p 8089:8089 \
        -v /root/AYData/GoCD/Agent2:/godata:z \
        -v /root/AYData/GoCD/GoHome:/home/go:z \
        -e GO_SERVER_URL=<go server address, e.g. 'https://172.17.0.3:8154/go'> \
        -e AGENT_AUTO_REGISTER_KEY="<agent auto register key, e.g. '35d07d00-6ef0-459a-9ceb-3845a3039717'>" \
        -e AGENT_AUTO_REGISTER_HOSTNAME=agent-common \
        --name gocd-agent-common \
        ayjiayou/gocd-agent-common
