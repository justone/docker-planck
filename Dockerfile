FROM ubuntu:16.04
MAINTAINER Nate Jones <nate@endot.org>

ENV PLANCK_VERSION 2.0-alpha3

RUN apt-get update && apt-get install javascriptcoregtk-4.0 libzip4 libcurl4-gnutls-dev -y
ADD http://planck-repl.org/releases/$PLANCK_VERSION-ubuntu-16.04/planck /usr/bin/planck
RUN chmod +x /usr/bin/planck

ENTRYPOINT ["/usr/bin/planck"]
