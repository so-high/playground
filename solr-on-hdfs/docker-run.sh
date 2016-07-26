#!/bin/bash
image_name=tjjang/solr
network_name=hadoop
name=$1
port=$2
# start hadoop master container
docker rm -f $name
echo "start solr container..."
docker run -it \
                --net=$network_name \
                -P \
		-p $port:8983 \
                --name $name \
                --hostname $name \
                $image_name \
		bash
