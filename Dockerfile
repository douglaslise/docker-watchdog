FROM node:8-alpine
MAINTAINER Leonardo Falk <leonardo.falk@hotmail.com>

ENV PROJECT_PATH $HOME/src/watchdog/
RUN mkdir -p /var/run/

RUN mkdir -p $PROJECT_PATH
WORKDIR $PROJECT_PATH

COPY package.json $PROJECT_PATH
RUN npm install

COPY index.js $PROJECT_PATH

CMD node $PROJECT_PATH/index.js
