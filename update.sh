#!/bin/sh
DIR=`pwd`

git pull

cd $DIR && docker-compose -f $DIR/docker-compose.yml up -d
