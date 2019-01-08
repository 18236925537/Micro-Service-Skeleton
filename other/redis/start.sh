#!/usr/bin/env bash
#docker run -p 6379:6379 -name redis -v ./redis.conf:/etc/redis/redis.conf -v ./data:/data -d redis:alpine redis-server /etc/redis/redis.conf -appendonly yes

docker run -p 6379:6379 --name redis -v redis.conf:/etc/redis/redis.conf -v data:/data -d redis:alpine --appendonly yes
