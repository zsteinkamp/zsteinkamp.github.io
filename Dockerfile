FROM ruby:2.6

RUN gem install bundler

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./

RUN bundle install

CMD ["/usr/local/bundle/bin/jekyll", "serve", "--host", "0.0.0.0", "--port", "8080", "--livereload", "--livereload-port", "8081", "--incremental"]
