FROM debian:stable

RUN apt-get update; \
  apt-get install -y python python-dev curl libxml2-dev libxslt1-dev zlib1g-dev

ADD lib/cqlsh /tmp/cqlsh

RUN bash -c "python <(curl https://bootstrap.pypa.io/get-pip.py)"; \
  pip install Cython; \
  pip install -e /tmp/cqlsh

ADD bin/cqlsh-docker /usr/local/bin/

CMD /usr/local/bin/cqlsh-docker