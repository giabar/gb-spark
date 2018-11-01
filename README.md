# Spark Docker images
_Docker base image: openjdk:8u181-jdk-stretch (Debian 9.5 with OpenJDK 1.8.181)_
_Apache Spark version: 2.3.2_

[![DockerPulls](https://img.shields.io/docker/pulls/giabar/gb-spark.svg)](https://registry.hub.docker.com/u/giabar/gb-spark/)
[![DockerStars](https://img.shields.io/docker/stars/giabar/gb-spark.svg)](https://registry.hub.docker.com/u/giabar/gb-spark/)

## Quick start online

You can try your Spark cluster online! Click the below button:

[![Try in PWD](https://raw.githubusercontent.com/play-with-docker/stacks/master/assets/images/button.png)](https://labs.play-with-docker.com/?stack=https://raw.githubusercontent.com/giabar/gb-spark/master/docker-compose-pwd.yml)


## Requirements

* Docker CE >= 17.06.* ( [Ubuntu installation script](https://gist.github.com/giabar/9c04cea19746c036ba5d9357eb47751a) / [CentOS installation script](https://gist.github.com/giabar/ac77abc295c0fb8ddcd646533207fe80) )
* Docker Compose >= 1.22.* ( [installation script](https://gist.github.com/giabar/f966aaecd84cbbce363214065c90ae0b) )


## Quick start locally
```
git clone https://github.com/giabar/gb-spark
cd gb-spark
docker network create spark-net
docker-compose up -d
```

### Launch a Spark application:
```
docker-compose -f docker-compose-app.yml up -d
```

### How to scale your workers:
```
docker-compose scale spark-worker=2
```


## How to build

If you want to build all the images on your machine:
```
git clone https://github.com/giabar/gb-spark
cd gb-spark
./build.sh
```
