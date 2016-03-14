#!/bin/bash

. ./var.sh

# Cassandra
echo ...Configuring Cassandra...
mv $CASSANDRA_HOME/conf/cassandra-env.sh $CASSANDRA_HOME/conf/cassandra-env.sh.orig
mv $CASSANDRA_HOME/conf/cassandra.yaml $CASSANDRA_HOME/conf/cassandra.yaml.orig
ln -s $SPARK_DEEP_LEARNING_HOME/config/cassandra/cassandra-env.sh $CASSANDRA_HOME/conf
ln -s $SPARK_DEEP_LEARNING_HOME/config/cassandra/cassandra.yaml $CASSANDRA_HOME/conf

echo ...Starting SSH...
service ssh start

echo ...Starting Cassandra...
nohup cassandra

echo ...Starting ZooKeeper...
nohup zookeeper-server-start $SPARK_DEEP_LEARNING_HOME/config/kafka/zookeeper.properties &

echo ...Starting Kafka...
nohup kafka-server-start $SPARK_DEEP_LEARNING_HOME/config/kafka/server.properties &

echo ...Starting Spark Notebook...
screen  -m -d -S "snb" bash -c 'cd $DEV_INSTALL_HOME/spark-notebook && ./bin/spark-notebook -Dconfig.file=$SPARK_DEEP_LEARNING_HOME/config/spark-notebook/spark-deep-learning.conf >> /root/nohup.out'
