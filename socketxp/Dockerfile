FROM ubuntu:latest

RUN apt-get update -y && apt-get install curl -y && apt-get -y install sudo

RUN /bin/bash -c "curl -O https://portal.socketxp.com/download/linux/socketxp && chmod +wx socketxp && sudo mv socketxp /usr/local/bin"

RUN /bin/bash -c 'socketxp login "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2MDIzMjY2MjQsImlkIjoiaXZhbmx5bmNoQGdpdGh1Yi5jb20ifQ.RhCXXKyUQlgwjzGYhGDlMQVEWdRVqyD99UBziHqdao4"'

RUN /bin/bash -c "socketxp connect http://192.168.0.10:8080/github-webhook/"    