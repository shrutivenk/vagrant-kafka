#!/usr/bin/env bash

echo "****** apt-get update ******"
sudo apt-get update -y

echo "****** apt-get default-jre ******"
sudo apt-get install default-jre -y

echo "****** apt-get zookeeperd ******"
sudo apt-get install zookeeperd -y 

echo "****** Creating Downloads Directory ******"
mkdir -p ~/Downloads

echo "****** Downloading kafka ******"
wget "http://mirror.cc.columbia.edu/pub/software/apache/kafka/0.8.2.1/kafka_2.11-0.8.2.1.tgz" -O ~/Downloads/kafka.tgz

echo "****** Untarring kafka ******"
mkdir -p ~/kafka && cd ~/kafka
tar -xvzf ~/Downloads/kafka.tgz --strip 1

echo "****** Starting kafka ******"
nohup ~/kafka/bin/kafka-server-start.sh ~/kafka/config/server.properties > ~/kafka/kafka.log 2>&1 &

