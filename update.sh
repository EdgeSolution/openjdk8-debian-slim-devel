#!/bin/sh
UPDATEPATH=`pwd`
DIR=openjdk8-debian-slim-devel

git clone https://github.com/james0718/$DIR.git

cd $DIR && docker-compose up -d
