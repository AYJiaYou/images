FROM gocd/gocd-agent-centos-7:v17.12.0
MAINTAINER lfree xh <xh@ayjiayou.com>

# install&config go environment
ADD go1.9.2.linux-amd64.tar.gz /usr/local/
RUN echo "pathmunge /usr/local/go/bin" > /etc/profile.d/go.sh && \
    chmod +x /etc/profile.d/go.sh

# install mysql & ansible
RUN yum -y install epel-release && \
    yum -y update && \
    yum -y install mysql ansible python-pip && \
    pip install --upgrade pip && \
    pip install docker-py

RUN sed -i "s|#host_key_checking = False|host_key_checking = False|g" /etc/ansible/ansible.cfg

EXPOSE 8080 8081 8082 8083 8084 8085 8086 8087 8088 8089
