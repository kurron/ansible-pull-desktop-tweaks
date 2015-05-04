#!/bin/bash

docker stop mongodb
docker rm mongodb
docker run --hostname mongodb --name mongodb --publish 27017:27017 --restart always --volumes-from mongodb-data --detach mongo --storageEngine=wiredTiger --journalCommitInterval=300

