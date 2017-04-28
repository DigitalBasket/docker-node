FROM node:6.7
MAINTAINER Justas Azna <justas@reederz.com>
ENV REFRESHED_AT 2017-04-28

# core packages
RUN apt-get update && apt-get upgrade -y && apt-get -y install \
  build-essential \
  libelf-dev && \
npm install -g yarn

ENV NPM_CONFIG_LOGLEVEL=warn

CMD npm --version
