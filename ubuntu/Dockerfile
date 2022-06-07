FROM ubuntu:22.04

ENV TZ=Etc/UTC
ENV DEBIAN_FRONTEND=noninteractive
ENV PATH ${HOME}/.cargo/bin:${PATH}

RUN apt-get update -y && apt-get install -y tzdata gnupg gnupg2 ca-certificates \
  apt-transport-https curl lsb-release \
  build-essential pkg-config libssl-dev \
  golang-go nodejs npm \
  python3-pip \
  && rm -rf /var/lib/apt/lists/*
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y
RUN pip install awscli

