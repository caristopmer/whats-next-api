FROM ruby:2.4.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /whats-next-api
WORKDIR /whats-next-api
ADD Gemfile /whats-next-api/Gemfile
ADD Gemfile.lock /whats-next-api/Gemfile.lock
RUN bundle install
ADD . /whats-next-api