FROM debian:stable

RUN apt-get update; \
  apt-get install -y python curl

ADD lib/cqlsh /tmp/cqlsh

RUN bash -c "python <(curl https://bootstrap.pypa.io/get-pip.py)"; \
  pip install -e /tmp/cqlsh

ADD bin/cqlsh-docker /usr/local/bin/

CMD /usr/local/bin/cqlsh-docker