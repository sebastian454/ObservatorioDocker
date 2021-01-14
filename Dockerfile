FROM ruby:2.6.3
ENV APP_ROOT /
ENV BUNDLE_PATH /usr/local/bundle

RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs

RUN    curl -o- -L https://yarnpkg.com/install.sh | bash

run apt install -y yarn


WORKDIR $APP_ROOT
ADD . $APP_ROOT
