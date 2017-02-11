FROM ubuntu:16.04
MAINTAINER Nate Jones <nate@endot.org>

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:mfikes/planck && \
    apt-get update && \
    apt-get install -y planck

RUN chmod +x /usr/bin/planck
ENTRYPOINT ["/usr/bin/planck"]
