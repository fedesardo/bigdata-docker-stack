FROM bde2020/spark-base:2.4.0-hadoop2.8

ENV APACHE_SPARK_VERSION 2.4.0
ENV APACHE_HADOOP_VERSION 2.8.0
ENV ZEPPELIN_VERSION 0.8.2

RUN apt-get update && apt-get install wget
RUN set -x \
    && curl -fSL "https://muug.ca/mirror/apache-dist/zeppelin/zeppelin-0.8.2/zeppelin-0.8.2-bin-all.tgz" -o /tmp/zeppelin.tgz \
    && tar -xzvf /tmp/zeppelin.tgz -C /opt/ \
    && mv /opt/zeppelin-* /opt/zeppelin \
    && rm /tmp/zeppelin.tgz

ENV SPARK_SUBMIT_OPTIONS "--jars /opt/zeppelin/sansa-examples-spark-2016-12.jar"

WORKDIR /opt/zeppelin

CMD ["/opt/zeppelin/bin/zeppelin.sh"]