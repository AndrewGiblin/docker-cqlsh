FROM debian:stable

RUN apt-get update; \
  apt-get install -y python curl

RUN bash -c "python <(curl https://bootstrap.pypa.io/get-pip.py)"; \
  pip install cqlsh==4.0.1

ADD bin/cqlsh-docker /usr/local/bin/

CMD /usr/local/bin/cqlsh-docker