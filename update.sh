#!/bin/sh
UPDATEPATH=`pwd`
DIR=openjdk8-debian-slim-devel

git clone https://github.com/EdgeSolution/$DIR.git

cd $DIR && docker-compose up -d
