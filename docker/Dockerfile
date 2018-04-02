 docker spark image.
# Using
# Version 1
# Pull the xenial image
FROM ubuntu:xenial
USER root
ENV SPARK_MON 8080
ENV SPARK_HOME /usr/local/spark
#ENV NODE_PUBLIC_DNS spark-master

# Update image
RUN apt-get update; apt-get dist-upgrade; apt-get update;
## jdk and maven are optional -- to compile spark apps

RUN apt-get install -y wget vim git ntp screen nginx \
  default-jdk maven \
  default-jre scala scala-library


# COPY spark-2.3.0-bin-hadoop2.7.tgz /tmp/spark-2.3.0-bin-hadoop2.7.tgz
# COPY hadoop-2.7.5.tar.gz /tmp/hadoop-2.7.5.tar.gz
COPY get-spark.sh /usr/bin/get-spark.sh
COPY configure-spark.sh /usr/bin/configure-spark.sh
COPY get-spark-apps.sh /usr/bin/get-spark-apps.sh
RUN chmod 500 /usr/bin/get-spark.sh /usr/bin/configure-spark.sh /usr/bin/get-spark-apps.sh



EXPOSE ${SPARK_MON} 7077 4040 6066
EXPOSE 80


CMD /usr/bin/configure-spark.sh && bash

