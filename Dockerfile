FROM debian:wheezy
MAINTAINER "Murphy McMahon"

RUN apt-get update && apt-get install -y wget \
    && cd /tmp \
    && wget -O jdk8.tar.gz \
       --header "Cookie: oraclelicense=accept-securebackup-cookie" \
       http://download.oracle.com/otn-pub/java/jdk/8u5-b13/jdk-8u5-linux-x64.tar.gz \
    && mkdir /opt/jdk \
    && tar xzf jdk8.tar.gz -C /opt/jdk \
    && update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.8.0_05/bin/java 100 \
    && update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.8.0_05/bin/javac 100

