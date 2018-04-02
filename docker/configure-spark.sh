#!/bin/bash
####
# cd /tmp
# tar -zxvf ./spark-2.3.0-bin-hadoop2.7.tgz
# mv /tmp/spark-2.3.0-bin-hadoop2.7 /usr/local/spark
# tar -zxvf ./hadoop-2.7.5.tar.gz
# mv /tmp/hadoop-2.7.5 /usr/local/hadoop
get-spark.sh

chown -R root:root /usr/local/spark /usr/local/hadoop
#chown -R ubuntu:root /usr/local/spark

cat >> /etc/profile.d/Z99-spark.sh <<'END_PATH'
## configure spark
SPARK_HOME=/usr/local/spark
HADOOP_HOME=/usr/local/hadoop
PATH=$PATH:$SPARK_HOME/bin
### end spark
END_PATH

source /etc/profile.d/Z99-spark.sh
cat > $SPARK_HOME/conf/spark-env.sh <<END_SPARK_CONF

export JAVA_HOME=/usr
export SPARK_WORKER_CORES=2
export SPARK_WORKER_MEMORY=1024M
export SPARK_DAEMON_MEMORY=1024M
#export SPARK_PUBLIC_DNS=$NODE_PUBLIC_DNS
export HADOOP_HOME=/usr/local/hadoop

END_SPARK_CONF

