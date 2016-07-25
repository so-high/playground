#!/bin/bash
ZKHOST=localhost:2181/solr
ZKCLI=/Users/coupang/Projects/solr-on-hdfs/solr/server/scripts/cloud-scripts/zkcli.sh
$ZKCLI -z localhost:2181  -cmd makepath /solr
$ZKCLI -z $ZKHOST -cmd putfile /solr.xml /Users/coupang/Projects/solr-on-hdfs/solr/server/solr/solr.xml
$ZKCLI -z $ZKHOST -cmd upconfig -n firstcollection -d /Users/coupang/Projects/solr-on-hdfs/solr/server/solr/configsets/data_driven_schema_configs/conf
