#!/bin/bash
curl "http://localhost:8983/solr/admin/collections?action=CREATE&name=firstcollection&numShards=2&replicationFactor=2&maxShardsPerNode=2"
