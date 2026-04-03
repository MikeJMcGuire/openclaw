FROM ghcr.io/openclaw/openclaw:latest

USER root

RUN apt-get update && apt-get install -y nano python3 python3-pip \
    && rm -rf /var/lib/apt/lists/*

USER node
