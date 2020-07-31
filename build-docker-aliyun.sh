#!/bin/sh
BUILDPATH=`pwd`
ANDROIDDM_VERSION=1.0.0
NOVNC_VERSION=1.0
MQTT_VERSION=1.0
HARBORURL=172.21.73.113
REPO=androiddm-aliyun

cd $BUILDPATH/mosquitto/
docker build -t $HARBORURL/$REPO/androiddm-mosquitto-aliyun:v$MQTT_VERSION .

cd $BUILDPATH/noVnc
docker build -t $HARBORURL/$REPO/androiddm-novnc-aliyun:v$NOVNC_VERSION .

cd $BUILDPATH/java-env/build-docker-image/
docker build -t $HARBORURL/$REPO/androiddm-javaenv-slim-aliyun:v$ANDROIDDM_VERSION .

cd $BUILDPATH/astore/build-docker-image/
docker build -t $HARBORURL/$REPO/androiddm-astore-slim-aliyun:v$ANDROIDDM_VERSION .

