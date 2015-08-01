FROM atlassian/bamboo-base-agent
MAINTAINER Alexander Harding <aeharding@software.dell.com>

# install our dependencies and nodejs
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list && \
    apt-get update && \
    apt-get -y install git graphicsmagick

# Install Node
RUN   \
  cd /opt && \
  wget http://nodejs.org/dist/v0.12.2/node-v0.12.2-linux-x64.tar.gz && \
  tar -xzf node-v0.12.2-linux-x64.tar.gz && \
  mv node-v0.12.2-linux-x64 node && \
  cd /usr/local/bin && \
  ln -s /opt/node/bin/* . && \
  rm -f /opt/node-v0.12.2-linux-x64.tar.gz



RUN npm install -g gulp bower

# ADD bamboo-capabilities.properties /root/bamboo-agent-home/bin/bamboo-capabilities.properties