#!/bin/sh
UPDATEPATH=`pwd`

git push

cd $DIR && docker-compose up -d
