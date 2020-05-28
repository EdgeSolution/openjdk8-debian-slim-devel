#!/bin/sh
BUILDPATH=`pwd`
ANDROIDDM_VERSION=1.6.5
NOVNC_VERSION=1.0
MQTT_VERSION=1.0

cd $BUILDPATH/mosquitto/
docker build -t 00718/androiddm-mosquitto-dev:v$MQTT_VERSION .

cd $BUILDPATH/noVnc
docker build -t 00718/androiddm-novnc-dev:v$NOVNC_VERSION .

cd $BUILDPATH/java-env/build-docker-image/
docker build -t 00718/androiddm-javaenv-slim-dev:v$ANDROIDDM_VERSION .

cd $BUILDPATH/astore/build-docker-image/
docker build -t 00718/androiddm-astore-slim-dev:v$ANDROIDDM_VERSION .

docker-compose up -d
