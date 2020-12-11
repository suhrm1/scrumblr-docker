FROM node:latest

ENV REDIS_HOST="redis"
ENV REDIS_PORT="6379"
ENV SCRUMBLR_PORT="80"

RUN apt-get update && apt-get install -y unzip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN cd /tmp \
    && wget https://github.com/aliasaria/scrumblr/archive/master.zip \
    && unzip master.zip \
    && rm master.zip \
    && mv scrumblr-master /srv/scrumblr \
    && cd /srv/scrumblr \
    && npm install

WORKDIR /srv/scrumblr

ENTRYPOINT node server.js --server:port=$SCRUMBLR_PORT --redis:url=redis://$REDIS_HOST:$REDIS_PORT
