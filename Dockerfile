FROM node:6.7
MAINTAINER Justas Azna <justas@reederz.com>
ENV REFRESHED_AT 2016-12-04

# core packages
RUN apt-get update && apt-get upgrade -y && apt-get -y install \
  build-essential \
  libelf-dev && \
npm install -g yarn@0.18.0

ENV NPM_CONFIG_LOGLEVEL=warn

CMD npm --version
