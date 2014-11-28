# MailCatcher Dockerfile
#
# https://github.com/dockerfile/mysql
#
# Pull base image.
FROM debian:jessie

MAINTAINER Matthew Buckett <matthew.buckett@it.ox.ac.uk>

# Install stuff for doing ruby development and building mailcatcher.
RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y ruby ruby-dev make g++ libsqlite3-0 libsqlite3-dev && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* 

RUN \
  gem install mailcatcher --no-rdoc --no-ri


CMD ["mailcatcher", "-f"]

EXPOSE 1025
EXPOSE 1080


