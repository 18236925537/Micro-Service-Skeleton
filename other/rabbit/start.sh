#!/usr/bin/env bash

docker run -d --hostname localhost --name rabbit-management --restart=always -p 15672:15672 -p 5672:5672 rabbitmq:management
