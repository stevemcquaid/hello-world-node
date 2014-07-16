# DOCKER-VERSION 0.10.0
# To build container: docker build .

# DOCKER-VERSION 0.10.0

FROM ubuntu:13.10

# make sure apt is up to date
RUN apt-get update

# install nodejs and npm
RUN apt-get install -y nodejs npm git git-core

# App
ADD . /src
# Install app dependencies
RUN cd /src; npm install

EXPOSE  8888