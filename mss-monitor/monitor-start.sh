#!/usr/bin/env bash
workspace_dir=/usr/codes/java/Micro-Service-Skeleton/mss-monitor
cd $workspace_dir
mvn install -Dmaven.test.skip=true
java -jar ./target/mss-monitor-2.0.0.jar --spring.profiles.active=dev