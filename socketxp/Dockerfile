FROM ubuntu:latest

ARG AUTH_TOKEN
ARG PORT
ARG JENKINS

RUN apt-get update -y && apt-get install curl -y && apt-get -y install sudo

RUN /bin/bash -c "curl -O https://portal.socketxp.com/download/linux/socketxp && chmod +wx socketxp && sudo mv socketxp /usr/local/bin"

RUN /bin/bash -c "socketxp login ${AUTH_TOKEN}"

RUN /bin/bash -c "socketxp relay http://${JENKINS}:${PORT}/github-webhook/"
