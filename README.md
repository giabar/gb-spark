# Spark Docker images

> Docker base image: openjdk:8u181-jdk-stretch (Debian 9.5 with OpenJDK 1.8.181)

### Apache Spark version: 2.3.2


## Try online

You can try that online! Click the below button:

[![Try in PWD](https://raw.githubusercontent.com/play-with-docker/stacks/master/assets/images/button.png)](https://labs.play-with-docker.com/?stack=https://raw.githubusercontent.com/giabar/gb-spark/master/docker-compose-pwd.yml)


Start a Spark cluster:
```
docker network create spark-net
docker-compose up -d
```

Launch a Spark application:
```
docker-compose -f docker-compose-app.yml up -d
```

How to scale your workers:
```
docker-compose scale spark-worker=2
```
