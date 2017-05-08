FROM ubuntu:16.04

MAINTAINER PRANEETH BUGGAVEETI

WORKDIR /opt

ADD bash /tmp/setup_5.x

RUN apt-get update
RUN apt-get install -y nodejs
RUN /usr/bin/npm isntall -g gulp
RUN /usr/bin/npm isntall -g bower

VOLUME ["/opt"]
CMD ["gulp", "watch"]
