构建个人ubuntu开发环境，并推送至dockerhub


### 构建镜像

```shell
docker build --progress=plain -t docker-ubuntu .

```

### 镜像打标签

```shell
docker tag docker-ubuntu elarry/ubuntu:0.0.1

```

### 登录Docker Hub

```shell
docker login

```

### 推送镜像

```shell
docker push elarry/ubuntu:0.0.1

```