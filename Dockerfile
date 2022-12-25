FROM ruby:3.1.2-bullseye

RUN gem install debug rubocop solargraph

RUN apt-get update
RUN apt-get install -y  \
      nodejs            \
      npm
RUN npm install --global yarn

COPY Gemfile Gemfile.lock ./
RUN bundle install
