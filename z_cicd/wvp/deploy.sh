#!/bin/bash

# 说明
# redis 和 mysql 根据实际情况进行配置
# EXTERNAL_IP为摄像头能访问的IP(公网IP)
docker run -d --name media-center --restart=always \
-p 18080:18080 \
-p 8116:8116 \
-p 8116:8116/udp \
-p 9092:9092 \
-p 9092:9092/udp \
-p 40000-40100:40000-40100 \
-p 40000-40100:40000-40100/udp \
-e TZ=Asia/Shanghai \
-e REDIS_HOST=192.168.88.204 \
-e REDIS_PORT=6379 \
-e REDIS_DB=8 \
-e REDIS_PASSWORD=123456 \
-e MYSQL_HOST=192.168.88.204 \
-e MYSQL_PORT=3306 \
-e MYSQL_SCHEMA=media_center \
-e MYSQL_USERNAME=root \
-e MYSQL_PASSWORD=123456 \
-e EXTERNAL_IP=192.168.88.172 \
registry.cn-shanghai.aliyuncs.com/k-public/media-center:250416