#!/bin/sh

#GET CURRENT IP
CURRENT_IP=$(ip -o route get to 8.8.8.8 | sed -n 's/.*src \([0-9.]\+\).*/\1/p')

#CLEAN THE .ENV FILE
truncate -s 0 .env

#ASK TO THE USER FOR THE AUTH TOKEN
read -p "Enter authorization token from SocketXP: " TOKEN

#SET ENV VARS
echo "JENKINS_HOST=$CURRENT_IP" >> .env
echo "JENKINS_PORT=8082" >> .env
echo "TOKEN=$TOKEN" >> .env

#CREATE DOCKER VOLUMES IF NOT EXIST
docker volume create jenkins-docker-certs
docker volume create jenkins-data
docker volume create socketxp-data

#CREATE DOCKER NETWORK IF NOT EXIST
docker network create jenkins




