#!/bin/bash

jarPath=/home/gangqiangsun/MYPROJECT/LOCAL/openjdk8-debian-slim-devel/java-env/build-docker-image
rm $jarPath/m2mserver.jar 
cp /home/gangqiangsun/MYPROJECT/BACKEND/m2m-core/leshan-mqtt-server-demo/target/leshan-mqtt-server-demo-1.0.0-ADV-jar-with-dependencies.jar $jarPath/m2mserver.jar
ls -al $jarPath
rm -r $jarPath/androidDM/*
cp -r /home/gangqiangsun/MYPROJECT/FRONTEND/m2mlink/dist/* $jarPath/androidDM/
ls -al $jarPath/androidDM/


ajarPath=/home/gangqiangsun/MYPROJECT/LOCAL/openjdk8-debian-slim-devel/astore/build-docker-image
rm $ajarPath/astore.jar 
cp /home/gangqiangsun/MYPROJECT/BACKEND/m2m-management/target/management-0.0.1-SNAPSHOT.jar $ajarPath/astore.jar
ls -al $ajarPath

