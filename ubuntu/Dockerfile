FROM ubuntu:21.10

RUN echo Asia/Shanghai > /etc/timezone
RUN apt-get update
RUN apt-get install -y tzdata
RUN apt-get install -y gnupg2
RUN apt-get install -y ca-certificates
RUN apt-get install -y build-essential
RUN apt-get install -y golang-go
RUN apt-get install -y nodejs npm