#!/bin/sh
BUILDPATH=`pwd`
ANDROIDDM_VERSION=1.6.7
NOVNC_VERSION=1.0
MQTT_VERSION=1.0
HARBORURL=172.21.73.113
REPO=androiddm

cd $BUILDPATH/mosquitto/
docker build -t $HARBORURL/$REPO/androiddm-mosquitto-dev:v$MQTT_VERSION .

cd $BUILDPATH/noVnc
docker build -t $HARBORURL/$REPO/androiddm-novnc-dev:v$NOVNC_VERSION .

cd $BUILDPATH/java-env/build-docker-image/
docker build -t $HARBORURL/$REPO/androiddm-javaenv-slim-dev:v$ANDROIDDM_VERSION .

cd $BUILDPATH/astore/build-docker-image/
docker build -t $HARBORURL/$REPO/androiddm-astore-slim-dev:v$ANDROIDDM_VERSION .

