## Kafka Commands

### Start Kafka with Zookeeper

#### Start Zookeeper (first)

    sudo zookeeper-server-start.sh /opt/kafka_2.13-3.3.2/config/zookeeper.properties

#### Start Kafka (second)

    sudo kafka-server-start.sh /opt/kafka_2.13-3.3.2/config/server.properties

### Start Kafka without Zookeeper

#### Create UUID

    sudo kafka-storage.sh random-uuid

#### Format

    sudo kafka-storage.sh format -t <uuid> -c /opt/kafka_2.13-3.3.2/config/kraft/server.properties
    
#### Start Kafka

    sudo kafka-server-start.sh /opt/kafka_2.13-3.3.2/config/kraft/server.properties
    sudo /opt/kafka_2.13-3.3.2/bin/kafka-server-start.sh /opt/kafka_2.13-3.3.2/config/kraft/server.properties


### Kafka Topics
    
    kafka-topics.sh --bootstrap-server localhost:9092

### Create playground.config file with content such as

    security.protocol=SASL_SSL
    sasl.jaas.config=org.apache.kafka.common.security.plain.PlainLoginModule required username="<your username>" password="<your password>";
    sasl.mechanism=PLAIN


### Create topic

    kafka-topics.sh --command-config playground.config --bootstrap-server cluster.playground.cdkt.io:9092 --create --topic second_topic --partitions 5 --replication-factor 3 


### List topics

    kafka-topics.sh --command-config playground.config --bootstrap-server cluster.playground.cdkt.io:9092 --list




