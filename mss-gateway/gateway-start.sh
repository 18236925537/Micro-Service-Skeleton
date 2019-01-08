#!/usr/bin/env bash
workspace_dir=/usr/codes/java/Micro-Service-Skeleton/mss-gateway
cd $workspace_dir
mvn install -Dmaven.test.skip=true
java -jar ./target/mss-gateway-2.0.0.jar  --spring.profiles.active=dev