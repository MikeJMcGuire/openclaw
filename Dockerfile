FROM ghcr.io/openclaw/openclaw:latest

USER root

RUN apt-get update && apt-get install -y python3 python3-pip \
    && rm -rf /var/lib/apt/lists/*

RUN npm install --prefix /app agentmail

USER node
