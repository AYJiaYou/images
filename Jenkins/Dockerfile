FROM registry.docker-cn.com/jenkins/jenkins:lts
MAINTAINER lfree xh <xh@ayjiayou.com>

USER root

# install sudo first
RUN apt-get update && apt-get install -y sudo 

# install sshpass & ansible
RUN sudo echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 && \
    apt-get update && \
    apt-get install -y sshpass ansible

USER jenkins
