FROM ubuntu:21.04

RUN echo Etc/UTC > /etc/timezone
RUN apt-get update -y && apt-get install -y --no-install-recommends tzdata gnupg gnupg2 ca-certificates \
  apt-transport-https curl lsb-release \
  build-essential pkg-config libssl-dev \
  golang-go nodejs npm \
  docker-ce docker-ce-cli containerd.io \
  python3-pip \
  && rm -rf /var/lib/apt/lists/*
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
RUN pip install awscli

ENV PATH ${HOME}/.cargo/bin:${PATH}
