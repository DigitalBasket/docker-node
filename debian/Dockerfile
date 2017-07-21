FROM node:8
MAINTAINER Justas Azna <justas@reederz.com>
ENV REFRESHED_AT 2017-07-21

# core packages
RUN apt-get update && apt-get upgrade -y && apt-get -y install build-essential

RUN yarn global add node-gyp # see https://github.com/yarnpkg/yarn/issues/2828

# Install configo
RUN curl -L https://github.com/bsideup/configo/releases/download/v0.4.1/configo.linux-amd64 > /usr/local/bin/configo && \
    chmod +x /usr/local/bin/configo

ENV NPM_CONFIG_LOGLEVEL=warn

CMD npm --version
