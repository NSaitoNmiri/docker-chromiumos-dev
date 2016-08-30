FROM ubuntu:16.04
MAINTAINER Naoki Saito <saito.naoki@nmiri.city.nagoya.jp>
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get upgrade -y
RUN adduser --gecos ",,," --disabled-password developer
RUN passwd -d developer
WORKDIR /tmp
ADD setup_root.sh setup_user.sh ./
RUN chmod +x setup_root.sh \
    && chmod +x setup_user.sh \
    && chown developer:developer setup_user.sh \
    && ./setup_root.sh
USER developer
WORKDIR /home/developer
RUN /tmp/setup_user.sh
