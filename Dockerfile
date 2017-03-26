FROM debian:stable

RUN apt-get update; \
  apt-get install -y python curl

ADD bin/cqlsh /usr/bin/

ADD bin/cqlsh-docker /usr/local/bin/

CMD /usr/local/bin/cqlsh-docker