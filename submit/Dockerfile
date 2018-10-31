FROM giabar/gb-spark:base
LABEL maintainer="g14b4r"

ENV SPARK_MASTER_NAME=spark-master
ENV SPARK_MASTER_PORT=7077
ENV SPARK_APPLICATION_JAR_LOCATION=/app/application.jar
ENV SPARK_APPLICATION_PYTHON_LOCATION=/app/app.py
ENV SPARK_APPLICATION_MAIN_CLASS=my.main.Application
ENV SPARK_APPLICATION_ARGS=""

COPY submit.sh /

CMD ["/bin/bash", "/submit.sh"]
