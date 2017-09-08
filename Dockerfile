FROM debian:stable
MAINTAINER Lachele Foley <lachele@gmail.com>

RUN apt-get update && apt-get install -y openconnect openssh-client iceweasel  \
    && apt-get clean  \
    && rm -rf /var/cache/apt/*  \
    && rm -rf /var/lib/apt/lists/*  

CMD /usr/sbin/openconnect

