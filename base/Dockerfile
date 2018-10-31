FROM openjdk:8u181-jdk-stretch
LABEL maintainer="g14b4r"

RUN DEBIAN_FRONTEND="noninteractive" apt-get -q update \
    && apt-get install -y --no-install-recommends --auto-remove curl python3 python3-setuptools python3-pip \
    && apt-get -q clean \
    && rm -rf /var/lib/apt/lists/*

ENV SPARK_VERSION=2.3.2
ENV HADOOP_VERSION=2.7
ENV SPARK_NAME=spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}
ENV SPARK_URL=http://it.apache.contactlab.it/spark/spark-${SPARK_VERSION}/${SPARK_NAME}.tgz
RUN set -x \
    && curl -fSL ${SPARK_URL} -o /tmp/spark.tgz \
    && tar -xvzf /tmp/spark.tgz -C / \
    && mv /${SPARK_NAME} /spark \
    && rm /tmp/spark.tgz

WORKDIR /
ENV PYTHONHASHSEED 1
