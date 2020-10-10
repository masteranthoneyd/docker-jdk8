FROM frolvlad/alpine-oraclejre8:8.202.08-slim
MAINTAINER yangbingdong <yangbingdong1994@gmail.com>
ARG TZ
ENV TZ=${TZ:-"Asia/Shanghai"}
RUN apk update && \
    apk add --no-cache && \
    apk add curl bash tree tzdata busybox-extras && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone

EXPOSE 8080

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
