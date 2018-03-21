FROM ruby:2.5-alpine

RUN apk update && \
    apk upgrade && \
    apk add ruby-dev build-base libxml2-dev libxslt-dev nodejs && \
    apk add git openssh && \
    apk add less && \
    rm -rf /var/cache/apk/*

RUN mkdir app/
WORKDIR /app

COPY . /app

RUN bundle config build.nokogiri --use-system-libraries && bundle install
