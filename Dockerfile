FROM ubuntu:latest

RUN apt-get update \
  && apt-get install -y sieve-connect ca-certificates \
  && rm -rf /var/lib/apt/lists/*

VOLUME ["/data"]
WORKDIR /data
ENTRYPOINT ["/usr/bin/sieve-connect"]
