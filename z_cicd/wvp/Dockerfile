FROM registry.cn-shanghai.aliyuncs.com/k-lib/zlm:250323

ENV REDIS_HOST 127.0.0.1
ENV REDIS_PORT 6379
ENV REDIS_DB 8
ENV REDIS_PASSWORD 123456

ENV MYSQL_HOST 127.0.0.1
ENV MYSQL_PORT 3306
ENV MYSQL_SCHEMA wvp
ENV MYSQL_USERNAME root
ENV MYSQl_PASSWORD 123456
ENV EXTERNAL_IP 192.168.88.204
ENV JAVA_OPTS="-Xms512M -Xmx2048M"

# WVP api
EXPOSE 18080/tcp
# SIP
EXPOSE 8116/tcp
EXPOSE 8116/udp
# zlm
EXPOSE 9092/tcp
EXPOSE 554/tcp
EXPOSE 554/udp
EXPOSE 40000-40100/tcp
EXPOSE 40000-40100/udp

ENV LC_ALL zh_CN.UTF-8

RUN export DEBIAN_FRONTEND=noninteractive &&\
        apt-get update && \
        apt-get install -y --no-install-recommends openjdk-11-jre ca-certificates ffmpeg language-pack-zh-hans && \
        apt-get autoremove -y && \
        apt-get clean -y && \
        rm -rf /var/lib/apt/lists/*dic

RUN mkdir /app
WORKDIR /app

ADD run.sh ./run.sh
ADD ./wvp-pro-*.jar ./app.jar
ADD ./application-prd.yml ./application.yml

CMD ["sh", "run.sh"]
