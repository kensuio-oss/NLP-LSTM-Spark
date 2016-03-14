# Dev Install
export DEV_INSTALL_HOME=/root

# Demo Home
export SPARK_DEEP_LEARNING_HOME=/root/spark-deep-learning

# data directory
export SBT_HOME=/root/sbt
export PATH=$PATH:$SBT_HOME/bin

# data directory
export DATA_DIR=/root/data

export CASSANDRA_HOME=$DEV_INSTALL_HOME/apache-cassandra-2.2.0
export PATH=$PATH:$CASSANDRA_HOME/bin

# Kafka
export KAFKA_HOME=$DEV_INSTALL_HOME/confluent-1.0
export PATH=$PATH:$KAFKA_HOME/bin

# ZooKeeper
export ZOOKEEPER_HOME=$KAFKA_HOME/bin
export PATH=$PATH:$ZOOKEEPER_HOME/bin


