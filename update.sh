#!/bin/sh
UPDATEPATH=`pwd`

git pull

cd $DIR && docker-compose up -d
