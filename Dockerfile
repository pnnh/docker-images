FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai

RUN apt-get update
RUN apt-get install -y ca-certificates
RUN apt-get install -y build-essential
RUN apt-get install -y golang-go
RUN apt-get install -y nodejs npm