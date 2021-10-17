FROM ubuntu:21.04

RUN echo Asia/Shanghai > /etc/timezone
RUN apt-get update
RUN apt-get install -y tzdata gnupg gnupg2 ca-certificates
RUN apt-get install -y apt-transport-https ca-certificates curl lsb-release
RUN apt-get install -y build-essential golang-go nodejs npm
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
RUN apt-get update
RUN apt-get install -y docker-ce docker-ce-cli containerd.io
RUN apt-get install -y python3-pip
RUN pip install awscli