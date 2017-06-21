FROM node:6.11
MAINTAINER Justas Azna <justas@reederz.com>
ENV REFRESHED_AT 2017-06-21

# core packages
RUN apt-get update && apt-get upgrade -y && apt-get -y install \
  build-essential \
  libelf-dev

ENV NPM_CONFIG_LOGLEVEL=warn

CMD npm --version
