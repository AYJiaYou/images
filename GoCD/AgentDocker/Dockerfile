FROM tispr/gocd-agent-dind:15.1

RUN apt-get update && apt-get install -y git maven

ADD autoregister.properties /var/lib/go-agent/config/
