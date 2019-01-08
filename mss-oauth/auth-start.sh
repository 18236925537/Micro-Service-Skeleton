#!/usr/bin/env bash
workspace_dir=/usr/codes/java/Micro-Service-Skeleton/mss-oauth
cd $workspace_dir
mvn install -Dmaven.test.skip=true
java -jar ./target/mss-oauth-2.0.0.jar  --spring.profiles.active=dev