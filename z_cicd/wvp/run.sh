#!/bin/bash

# zlm
nohup /opt/media/MediaServer -d -m 3 &

sleep 10

# wvp
java -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/app/ ${JAVA_OPTS} \
-Djava.security.egd=file:/dev/./urandom \
-jar /app/app.jar --spring.config.location=/app/application.yml