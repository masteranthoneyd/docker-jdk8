FROM frolvlad/alpine-glibc:alpine-3.8

MAINTAINER yangbingdong <yangbingdong1994@gmail.com>

ADD jdk8.tar.gz /usr/local/
COPY arthas-boot.jar /arthas-boot.jar

ENV JAVA_HOME /usr/local/jdk1.8.0_211
ENV PATH  ${PATH}:${JAVA_HOME}/bin