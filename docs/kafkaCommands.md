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

