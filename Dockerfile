FROM frolvlad/alpine-oraclejre8:slim
MAINTAINER ybd <yangbingdong1994@gmail.com>
ARG TZ 
ARG HTTP_PROXY
ENV TZ=${TZ:-"Asia/Shanghai"} http_proxy=${HTTP_PROXY} https_proxy=${HTTP_PROXY}
RUN apk update && \
    apk add --no-cache && \
    apk add curl bash tree tzdata busybox-extras && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone 
ENV http_proxy=
ENV https_proxy=
