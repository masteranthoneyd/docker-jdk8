FROM frolvlad/alpine-glibc:alpine-3.8

MAINTAINER yangbingdong <yangbingdong1994@gmail.com>

ADD jdk8-slim.tar.gz /usr/local/
COPY arthas-boot.jar /arthas-boot.jar

ENV JAVA_HOME /usr/local/jdk1.8.0_211
ENV PATH  ${PATH}:${JAVA_HOME}/bin

ARG TZ
ARG HTTP_PROXY
ENV TZ=${TZ:-"Asia/Shanghai"} http_proxy=${HTTP_PROXY} https_proxy=${HTTP_PROXY}
RUN apk update && \
    apk add --no-cache && \
    apk add curl bash tree tzdata busybox-extras && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone
ENV http_proxy=""
ENV https_proxy=""