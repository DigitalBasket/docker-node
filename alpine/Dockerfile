FROM node:8-alpine
MAINTAINER Justas Azna <justas@reederz.com>
ENV REFRESHED_AT 2017-10-14

# core packages
RUN apk --no-cache add g++ make curl python bash

RUN apk update && \
        apk add ca-certificates wget && \
        update-ca-certificates

RUN wget -O /etc/apk/keys/sgerrand.rsa.pub https://raw.githubusercontent.com/sgerrand/alpine-pkg-glibc/master/sgerrand.rsa.pub && \
        wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.25-r0/glibc-2.25-r0.apk && \
        apk add glibc-2.25-r0.apk && \
        rm glibc-2.25-r0.apk

# Install configo
RUN curl -L https://github.com/bsideup/configo/releases/download/v0.4.1/configo.linux-amd64 > /usr/local/bin/configo && \
    chmod +x /usr/local/bin/configo

ENV NPM_CONFIG_LOGLEVEL=warn

CMD npm --version
