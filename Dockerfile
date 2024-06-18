FROM bitnami/java:1.8.212

ENV JAVA_HOME=/opt/bitnami/java
ENV PATH=/opt/bitnami/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV PATH /opt/flume/bin:/opt/bitnami/java:$PATH

ARG FLUME_VERSION=1.10.1
RUN mkdir /opt/flume \
    && wget -qO- https://archive.apache.org/dist/flume/${FLUME_VERSION}/apache-flume-${FLUME_VERSION}-bin.tar.gz \
          | tar zxvf - -C /opt/flume --strip 1

ADD log4j2.xml /opt/flume/conf/log4j2.xml
ADD start-flume.sh /opt/flume/bin/start-flume

ENTRYPOINT [ "start-flume" ]
