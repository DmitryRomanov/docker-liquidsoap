FROM ubuntu:14.04
MAINTAINER Dmitry Romanov "dmitry.romanov85@gmail.com"

RUN apt-get update && apt-get install -y \
    liquidsoap \
 && rm -rf /var/lib/apt/lists/*

VOLUME ["/liquidsoap"]
WORKDIR /liquidsoap

ENTRYPOINT [ "liquidsoap" ]

USER nobody
