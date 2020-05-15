#!/bin/sh
BUILDPATH=`pwd`
ANDROIDDM_VERSION=1.0
NOVNC_VERSION=1.0
MQTT_VERSION=1.0

cp -f m2mserver.jar $BUILDPATH/java-env/build-docker-image/
cp -f astore.jar $BUILDPATH/astore/build-docker-image/

cd $BUILDPATH/mosquitto/
docker build -t edgesolution/androiddm-mosquitto-dev:v$MQTT_VERSION .

cd $BUILDPATH/noVnc
docker build -t edgesolution/androiddm-novnc-dev:v$NOVNC_VERSION .

cd $BUILDPATH/java-env/build-docker-image/
docker build -t edgesolution/androiddm-javaenv-slim-dev:v$ANDROIDDM_VERSION .

cd $BUILDPATH/astore/build-docker-image/
docker build -t edgesolution/androiddm-astore-slim-dev:v$ANDROIDDM_VERSION .
