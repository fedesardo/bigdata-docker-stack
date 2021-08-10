![novakorp](./img/logo_horizontal.png)


# Table of content
- [Table of content](#table-of-content)
- [Introduction](#introduction)
- [Environment](#environment)
- [Installation](#installation)
- [IP's assignment](#ips-assignment)
- [URL's](#urls)
- [known issues](#known-issues)


REVISAR PERMISOS EN LA CARPETA DATA !!!!!!!!!!!!!!!!!!!!!!


# Introduction

The main goal of this project is to generate a BIG DATA infrastructure to use locally and make it available for any member of Novakorp using docker-compose. If you are not familiar with docker 

This platform contains:

- Apache Hadoop (HDFS)
- Apache Spark
- Apache Zeppelin
- Apache Nifi
- Apache Kafka
- Apache Hive
- Apache Zookeeper
- Apache Sqoop (not working yet)
- Grafana
- Prometheus
- Postgres
- 

# Environment
This project was tested and runs using this software version:

- OS Name: Ubuntu
- OS Version: 20.04.2 LTS (Focal Fossa)
- Docker Engine: 20.10.7
- Docker Compose: 1.29.2
- Java Version: openjdk version "1.8.0_292"

# Installation
Before moving forward be sure that you met all the system requirement described in the [environment](#environment) section.

Once the project was downloaded be sure that you are placed in the project root directory and execute:

```shell
docker-compose up -d 
```

Moving data from Apache Nifi to HDFS is one of the most common uses cases. In that case you will need to place the core-site.xml and hdfs-site.xml inside the nifi container.

Please run the following command, notice that you must be placed into *scripts* folders

```shell
./copy-hdfs-files-to-nifi.sh
```

The file will be placed inside the nifi container in the */opt/nifi/hdfs-config* folder.

**Important**
- Perhaps you should add executable permissions to the file.
- The script will only copy the files. Configure the nifi processor is up to you.


# IP's assignment 
   - 172.27.1.10 ---> hdfs namenode
   - 172.27.1.11 ---> hdfs datanode
   - 172.27.1.20 ---> spark-master
   - 172.27.1.21 ---> spark-worker
   - 172.27.1.22 ---> spark-worker-2
   - 172.27.1.30 ---> hive-server
   - 172.27.1.31 ---> hive-metastore
   - 172.27.1.32 ---> hive-metastore-postgresql
   - 172.27.1.40 ---> zookeeperKafka
   - 172.27.1.41 ---> zookeeperNifi
   - 172.27.1.50 ---> kafka
   - 172.27.1.60 ---> Nifi
   - 172.27.1.61 ---> Nifi Registry
   - 172.27.1.70 ---> Zeppelin
   - 172.27.1.80 ---> Hue
   - 172.27.1.81 ---> Hue-postgres
   - 172.27.1.90 ---> nova-postgres (postgres latest version)
   - 172.27.1.91 ---> sql-server2019
   - 172.27.1.100 ---> prometheus
   - 172.27.1.101 ---> influxdb
   - 172.27.1.102 ---> telegraf
   - 172.27.1.200 ---> grafana
   - 172.27.1.201 ---> elasticsearch
   - 172.27.1.202 ---> kibana
   - 172.27.1.203 ---> logstash

 
# URL's

  - Hadoop namenode: http://localhost:50070
  - Apache Nifi: http://localhost:9090
  - Apache Nifi Registry : http://localhost:18080/nifi-registry
  - Hue: http://localhost:8888
  - Spark: http://localhost:8080
  - Zeppelin: http://localhost:9999
  - Hive: http://localhost:10002/
  - Grafana: http://localhost:3000
  - Kibana: http:// localhost:5601
  - Elasticsearch: http://localhost:9200/

# known issues
 - The nifi container does not persist any kind of data if you remove the container.
 - Logstash container is not working.