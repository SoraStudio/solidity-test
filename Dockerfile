FROM node:latest

USER root

RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list

RUN apt update 
RUN apt install -y git python

RUN npm config set registry https://registry.npm.taobao.org
RUN npm install -g @remix-project/remixd

RUN sed -i s/127.0.0.1/0.0.0.0/g /usr/local/lib/node_modules/@remix-project/remixd/websocket.js

EXPOSE 65520

ENTRYPOINT ["/usr/local/bin/remixd", "-s", "/app", "--remix-ide", "http://localhost:8080"]