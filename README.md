# vagrant-kafka

# *First* time setup
`vagrant up` on the first setup will download the box + download kafka + download dependencies (java, zookeper) + start kafka


# Subsequent starts

Once the box is setup, to start kafka on subsequent restarts of vagrant

`vagrant up`

`vagrant ssh`

`sudo su`

`cd ~`

`nohup ~/kafka/bin/kafka-server-start.sh ~/kafka/config/server.properties > ~/kafka/kafka.log 2>&1 &`


# Test the installation

`vagrant ssh`

`sudo su`

`echo "Hello, World" | ~/kafka/bin/kafka-console-producer.sh --broker-list localhost:9092 --topic TutorialTopic > /dev/null`





