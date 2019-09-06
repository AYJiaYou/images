FROM jenkins/jenkins:lts
#FROM registry.docker-cn.com/jenkins/jenkins:lts
MAINTAINER lfree xh <xh@ayjiayou.com>

USER root

# install sudo first
RUN apt-get update && apt-get install -y sudo 

# install sshpass & ansible
RUN sudo echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 && \
    apt-get update && \
    apt-get install -y sshpass ansible

# install go
#ADD ./go1.10.linux-amd64.tar.gz /usr/local/
#ADD https://dl.google.com/go/go1.10.linux-amd64.tar.gz /usr/local/
ADD https://dl.google.com/go/go1.13.linux-amd64.tar.gz /usr/local/
RUN cd /usr/local && \
    tar -xf ./go1.13.linux-amd64.tar.gz && \
    rm -f go1.13.linux-amd64.tar.gz
ENV PATH /usr/local/go/bin:$PATH

# install nodejs
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - && \
    apt-get install -y nodejs && \
    apt-get install -y build-essential

USER jenkins
