#!/bin/sh
BUILDPATH=`pwd`
ANDROIDDM_VERSION=1.0
NOVNC_VERSION=1.0
MQTT_VERSION=1.0


docker tag edgesolution/androiddm-mosquitto-dev:v$MQTT_VERSION edgesolution/androiddm-mosquitto:v$MQTT_VERSION

docker tag edgesolution/androiddm-novnc-dev:v$NOVNC_VERSION edgesolution/androiddm-novnc:v$NOVNC_VERSION

docker tag edgesolution/androiddm-javaenv-slim-dev:v$ANDROIDDM_VERSION edgesolution/androiddm-javaenv-slim:v$ANDROIDDM_VERSION

docker tag edgesolution/androiddm-astore-slim-dev:v$ANDROIDDM_VERSION edgesolution/androiddm-astore-slim:v$ANDROIDDM_VERSION


docker login && \
docker push edgesolution/androiddm-mosquitto:v$MQTT_VERSION && \
docker push edgesolution/androiddm-novnc:v$NOVNC_VERSION && \
docker push edgesolution/androiddm-javaenv-slim:v$ANDROIDDM_VERSION && \
docker push edgesolution/androiddm-astore-slim:v$ANDROIDDM_VERSION

