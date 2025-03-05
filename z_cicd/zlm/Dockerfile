FROM ubuntu:24.04

MAINTAINER kayson

ENV ZLM_GIT=https://github.com/kaysonsun/ZLMediaKit.git
ENV ZLM_HOME=/ZLMediaKit

RUN apt update \
    && apt install -y git build-essential cmake libssl-dev libsdl-dev libavcodec-dev libavutil-dev ffmpeg \

RUN cd / \
    $$ git clone --depth 1 $ZLM_GIT \

WORKDIR $ZLM_HOME

RUN mkdir build \
    && cd build \
    && cmake -DCMAKE_BUILD_TYPE=Release .. \
    && make -j4

WORKDIR $ZLM_HOME/release/linux/Release

