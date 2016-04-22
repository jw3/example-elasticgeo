FROM debian:jessie

ENV PATH=/init:$PATH
ADD init/ /init
RUN chmod +x -R /init/*.sh
RUN apt-get update && \
    apt-get install -y --no-install-recommends curl jq && \
    rm -rf /tmp/*
