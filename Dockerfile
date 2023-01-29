FROM ruby:2.6

RUN gem install bundler

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./

RUN bundle install

CMD ["/usr/src/app/startup.sh"]
