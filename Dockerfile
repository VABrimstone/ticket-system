FROM ruby:3.1.2-bullseye

RUN gem install debug rubocop solargraph

COPY Gemfile Gemfile.lock ./
RUN bundle install
