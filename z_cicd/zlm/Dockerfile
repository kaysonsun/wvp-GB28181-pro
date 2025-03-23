FROM ubuntu:24.04

ENV ZLM_GIT=https://github.com/kaysonsun/ZLMediaKit.git
ENV ZLM_HOME=/ZLMediaKit

RUN apt update \
    && apt install -y git build-essential cmake libssl-dev libsdl-dev libavcodec-dev libavutil-dev ffmpeg

RUN git clone --depth 1 $ZLM_GIT $ZLM_HOME

WORKDIR $ZLM_HOME

RUN git submodule update --init \
    && mkdir build \
    && cd build \
    && cmake -DCMAKE_BUILD_TYPE=Release .. \
    && make -j4 \
    && rm -rf ../release/linux/Release/config.ini \
    && mkdir -p /opt/media \
    && cp -r ../release/linux/Release/* /opt/media \
    && apt clean

COPY ./config/config.ini /opt/media/

WORKDIR /opt/media/

