FROM openjdk:8u212-jdk-alpine
MAINTAINER yangbingdong <yangbingdong1994@gmail.com>
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk --update  add --no-cache tzdata ttf-dejavu fontconfig curl tini ospd-netstat  && rm -rf /var/cache/apk/* \
    && mkdir -p /app && mkdir -p /app/config \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone
COPY --from=hengyunabc/arthas:latest /opt/arthas /opt/arthas