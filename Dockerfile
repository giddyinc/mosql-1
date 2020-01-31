FROM ruby:2.3 as builder

RUN apt-get update \
 && apt-get -y upgrade \
  && apt-get install -qq -y \
    git \
    build-essential

ENV APP_HOME /srv/app
WORKDIR $APP_HOME
COPY . ./

RUN bundle install --path vendor/bundle

ENV RAILS_ENV staging

