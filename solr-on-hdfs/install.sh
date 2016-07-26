#!/bin/bash
if [ ! -e solr-6.1.0.tgz ] ; then 
  wget http://mirror.navercorp.com/apache/lucene/solr/6.1.0/solr-6.1.0.tgz
  #tar -xzf solr-6.1.0.tgz
  #ln -s solr-6.1.0 solr
fi 


if [ ! -e zookeeper-3.4.8.tar.gz ] ; then
  wget http://mirror.navercorp.com/apache/zookeeper/zookeeper-3.4.8/zookeeper-3.4.8.tar.gz
fi
