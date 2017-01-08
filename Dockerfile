FROM ocaml/opam:ubuntu-14.04_ocaml-4.01.0
MAINTAINER Dmitry Romanov "dmitry.romanov85@gmail.com"

RUN ["opam", "depext", "-i", "conf-libpcre"]
RUN ["opam", "install", "liquidsoap.1.2.1"]
RUN ["opam", "depext", "-i", "lame"]
RUN ["opam", "depext", "-i", "mad"]
RUN ["opam", "install", "lastfm"]
RUN ["opam", "install", "cry"]
RUN ["opam", "depext", "-i", "taglib"]

VOLUME ["/liquidsoap"]
WORKDIR /liquidsoap

ENTRYPOINT [ "/home/opam/.opam/system/bin/liquidsoap" ]
