FROM hwuethrich/bamboo-agent

# remove nodejs 0.6
RUN apt-get remove nodejs

RUN mkdir /nodejs && curl http://nodejs.org/dist/v0.10.33/node-v0.10.33-linux-x64.tar.gz | tar xvzf - -C /nodejs --strip-components=1

ENV PATH $PATH:/nodejs/bin

RUN npm install -g gulp grunt bower
