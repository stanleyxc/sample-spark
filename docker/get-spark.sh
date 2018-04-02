#!/bin/bash


#wget http://mirrors.ibiblio.org/apache/spark/spark-2.3.0/spark-2.3.0-bin-hadoop2.7.tgz
wget http://mirror.cc.columbia.edu/pub/software/apache/spark/spark-2.3.0/spark-2.3.0-bin-hadoop2.7.tgz -P /tmp
wget http://mirror.cc.columbia.edu/pub/software/apache/hadoop/common/hadoop-2.7.5/hadoop-2.7.5.tar.gz -P /tmp
cd /tmp
tar -zxvf ./spark-2.3.0-bin-hadoop2.7.tgz
mv /tmp/spark-2.3.0-bin-hadoop2.7 /usr/local/spark

tar -zxvf ./hadoop-2.7.5.tar.gz
mv /tmp/hadoop-2.7.5 /usr/local/hadoop

#chown -R root:root /usr/local/spark /usr/local/hadoop

