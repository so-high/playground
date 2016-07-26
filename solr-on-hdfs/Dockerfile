FROM ubuntu
MAINTAINER taejun.jang<tjjang.coupang.com>

USER root

RUN apt-get update
RUN apt-get install --assume-yes net-tools
RUN apt-get install --assume-yes sudo
RUN apt-get install --assume-yes vim
RUN apt-get install --assume-yes rsync

# JAVA
RUN apt-get install --assume-yes default-jdk
ENV JAVA_HOME /usr/lib/jvm/default-java
ENV PATH $PATH:$JAVA_HOME/bin
#RUN echo "export JAVA_HOME=\/usr\/lib\/jvm\/default-java" >> ~/.bashrc
#RUN echo "export PATH=/opt/hadoop/bin:/opt/hadoop/sbin:$PATH" >> ~/.bashrc


#SOLR
ADD solr-6.1.0.tgz /opt
RUN ln -s /opt/solr-6.1.0 /opt/solr

#ZK 
ADD zookeeper-3.4.8.tar.gz /opt
RUN ln -s /opt/zookeeper-3.4.8 /opt/zookeeper
RUN cp /opt/zookeeper/conf/zoo_sample.cfg /opt/zookeeper/conf/zoo.cfg

RUN mkdir -p /opt/solr/solr.home
ADD ./create-collection.sh /opt/solr/create.sh
ADD ./start-solr.sh /opt/solr/start.sh
ADD ./stop-solr.sh /opt/solr/stop.sh
ADD ./upconfig.sh /opt/solr/upconfig.sh

RUN apt-get install -y lsof
RUN apt-get install -y man
RUN apt-get install -y wget 
RUN apt-get install -y curl
RUN apt-get install -y net-tools

CMD ['/bin/bash','-d']
