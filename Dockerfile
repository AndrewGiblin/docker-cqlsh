FROM debian:stable

RUN apt-get update; \
  apt-get install -y python curl

RUN bash -c "python <(curl https://bootstrap.pypa.io/get-pip.py)"; \
  pip install cql; \
  pip install cassandra-driver==2.1.4

ADD bin/cqlsh /usr/bin/

ADD bin/cqlsh-docker /usr/local/bin/

CMD /usr/local/bin/cqlsh-docker
