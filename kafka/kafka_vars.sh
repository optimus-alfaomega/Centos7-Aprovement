#!/bin/bash
# repos en github

########################## configuración de seguridad basica
export SO_USERNAME="kafka"
export DEFAULT_PWD="Qdmin123456789"
export KAFKA_HOME="/opt"
export KAFKA_VERSION="kafka_2.13-3.2.0"
export KAFKA_REPO_DOWNLOAD="https://downloads.apache.org/kafka/3.2.0/"${KAFKA_VERSION}".tgz"
############################## java ########################3
export JAVA_VERSION="java-1.8.0-openjdk"
########################3 socket Server settings #######3
export NUM_NETWORK_THREADS=3
export NUM_IO_THREADS=8
export SOCKET_SEND_BUFFER_BYTES=102400
export SOCKET_RECEIVE_BUFFER_BYTTES=102400
export DEFALUT_SOCKET_REQUEST_MAX_BYTES=104857600
export SOCKET_RECEIVE_BUFFER_BYTTES=1195725856
export LOG_DIRS="/tmp/kafka-logs"
################## internal topic sets
export OFFSETS_TOPIC_REPLICATION_FACTOR=1
export TRANSACTION_STATE_LOG_REPLICATION_FACTOR=1
export TRANSACTION_STATE_LOG_MIN_ISR=1
################## Log flush policy
export LOG_FLUSH_INTERVAL_MESSAGES=10000
export LOG_FLUSH_INTERVAL_MS=1000
####################log retention #########################33
export LOG_RETENTION_HOURS=168
export LOG_SEGMENT_BYTES=1073741824
export LOG_RETENTION_CHECK_INTERVAL_MS=300000
######################3 zookeeper ########################
### hay que detallar más.............................
export ZOOKEEPER_CONNECTION_TIMEOUT_MS=18000

######################## end ################################3
