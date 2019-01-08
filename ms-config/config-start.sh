#!/usr/bin/env bash
workspace_dir=/usr/codes/java/Micro-Service-Skeleton/ms-config
cd $workspace_dir
mvn install -Dmaven.test.skip=true
java -jar ./target/ms-config-2.0.0.jar