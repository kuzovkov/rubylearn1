FROM ruby:2.4

RUN apt-get update \
    && apt-get -y install curl wget git ssh
WORKDIR /app
COPY app/* /app/
RUN gem install 'test-unit'
