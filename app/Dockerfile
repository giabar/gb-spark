FROM giabar/gb-spark:submit

RUN mkdir -p /app
COPY original-spark-examples*.jar /app/spark-examples.jar

ENV SPARK_MASTER_NAME=spark-master
ENV SPARK_MASTER_PORT=7077
ENV SPARK_APPLICATION_JAR_LOCATION=/app/spark-examples.jar
ENV SPARK_APPLICATION_MAIN_CLASS=org.apache.spark.examples.SparkPi
ENV SPARK_APPLICATION_ARGS=""
