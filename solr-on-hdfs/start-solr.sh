#!/bin/bash

SOLR_OPTS="-Dsolr.directoryFactory=HdfsDirectoryFactory -Dsolr.lock.type=hdfs -Dsolr.hdfs.home=hdfs://localhost:9000/user/coupang/solr"
port=$1
home=$2
echo "./solr/bin/solr start -z localhost:2181/solr -s $home -p $port $SOLR_OPTS"
./solr/bin/solr start -z localhost:2181/solr -s $home -p $port $SOLR_OPTS
