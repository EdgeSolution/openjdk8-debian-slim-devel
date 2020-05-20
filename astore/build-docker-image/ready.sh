#!/bin/bash
ajarPath=/home/gangqiangsun/MYPROJECT/LOCAL/openjdk8-debian-slim-devel/astore/build-docker-image
rm $ajarPath/astore.jar 
cp /home/gangqiangsun/MYPROJECT/BACKEND/m2m-management/target/management-0.0.1-SNAPSHOT.jar $ajarPath/astore.jar
ls -al $ajarPath
