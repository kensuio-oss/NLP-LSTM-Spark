#!/bin/bash

. ./var.sh

echo "Waiting 15 seconds..."
sleep 15

echo ...Creating Kafka Topics...
kafka-topics --zookeeper localhost:2181 --create --topic demo --partitions 1 --replication-factor 1

echo ...Creating Cassandra Keyspaces Column Families and Tables...
cqlsh -e "CREATE KEYSPACE IF NOT EXISTS demo WITH REPLICATION = { 'class': 'SimpleStrategy',  'replication_factor':1};"

echo "++DONE++"
