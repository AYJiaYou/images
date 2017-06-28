FROM gocd/gocd-agent-centos-7:v17.5.0
MAINTAINER lfree xh <xh@ayjiayou.com>

# install&config go environment
ADD go1.8.3.linux-amd64.tar.gz /usr/local/
RUN echo "pathmunge /usr/local/go/bin" > /etc/profile.d/go.sh && \
    chmod +x /etc/profile.d/go.sh
