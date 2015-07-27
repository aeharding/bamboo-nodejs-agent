FROM hwuethrich/bamboo-agent

RUN mkdir /nodejs && curl http://nodejs.org/dist/v0.10.33/node-v0.10.33-linux-x64.tar.gz | tar xvzf - -C /nodejs --strip-components=1

RUN npm install -g gulp bower

ENV PATH $PATH:/nodejs/bin