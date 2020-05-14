#!/bin/bash
BUILDPATH=`pwd`

cp -f m2mserver.jar $BUILDPATH/java-env/build-docker-image/
cp -f astore.jar $BUILDPATH/astore/build-docker-image/

cd $BUILDPATH/mosquitto/
docker build -t edgesolution/androiddm-mosquitto:v1.0 .

cd $BUILDPATH/noVnc
docker build -t edgesolution/androiddm-novnc:v1.0 .

cd $BUILDPATH/java-env/build-docker-image/
docker build -t edgesolution/androiddm-javaenv-slim:v1.0 .

cd $BUILDPATH/astore/build-docker-image/
docker build -t edgesolution/androiddm-astore-slim:v1.0 .
