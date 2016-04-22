FROM debian:jessie

ADD init/ /init
RUN chmod +x -R /init/*.sh
RUN apt-get update && \
    apt-get install -y --no-install-recommends curl jq && \
    rm -rf /tmp/*
