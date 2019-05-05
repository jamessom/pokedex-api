FROM ruby:2.5-alpine

ENV APP_HOME /pokedex_api
ENV BUNDLE_PATH ${APP_HOME}/.gems

RUN apk update &&\
  apk upgrade &&\
  apk --no-cache add build-base nodejs postgresql-dev sqlite-dev git tzdata &&\
  rm -rf /var/cache/apk/*

RUN mkdir -p ${APP_HOME}
WORKDIR ${APP_HOME}

COPY Gemfile* ${APP_HOME}/
RUN bundle install --jobs=10 --path=${BUNDLE_PATH} --clean

ADD . ${APP_HOME}