FROM node:6.7
MAINTAINER Justas Azna <justas@reederz.com>
ENV REFRESHED_AT 2016-10-08

# core packages
RUN apt-get update && apt-get upgrade -y && apt-get -y install \
  build-essential \
  libelf-dev && \
npm install -g npm@3.8.7

CMD npm --version
