FROM ubuntu:16.04
MAINTAINER Naoki Saito <saito.naoki@nmiri.city.nagoya.jp>
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get upgrade -y
RUN adduser --gecos ",,," --disabled-password developer
RUN passwd -d developer
