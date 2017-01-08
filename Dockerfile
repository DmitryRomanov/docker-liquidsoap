FROM ocaml/opam:ubuntu-14.04_ocaml-4.01.0
MAINTAINER Dmitry Romanov "dmitry.romanov85@gmail.com"

RUN ["opam", "depext", "-i", "conf-libpcre.1"]
RUN ["opam", "install", "liquidsoap.1.2.1"]
RUN ["opam", "install", "lastfm"]

VOLUME ["/liquidsoap"]
WORKDIR /liquidsoap

ENTRYPOINT [ "liquidsoap" ]

USER nobody
