#!/bin/bash

jarPath=/home/gangqiangsun/MYPROJECT/LOCAL/openjdk8-debian-slim-test/java-env/build-docker-image
rm $jarPath/m2mserver.jar 
cp /home/gangqiangsun/MYPROJECT/BACKEND/m2m-core-linux/leshan-mqtt-server-demo/target/leshan-mqtt-server-demo-1.0.0-ADV-jar-with-dependencies.jar $jarPath/m2mserver.jar
ls -al $jarPath
rm -r $jarPath/androidDM/*
cp -r /home/gangqiangsun/MYPROJECT/FRONTEND/m2mlink-linux/dist/* $jarPath/androidDM/
ls -al $jarPath/androidDM/


ajarPath=/home/gangqiangsun/MYPROJECT/LOCAL/openjdk8-debian-slim-test/astore/build-docker-image
rm $ajarPath/astore.jar 
cp /home/gangqiangsun/MYPROJECT/BACKEND/m2m-management-linux/target/management-0.0.1-SNAPSHOT.jar $ajarPath/astore.jar
ls -al $ajarPath

