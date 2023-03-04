FROM ruby:2.6 AS base

RUN gem install bundler

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./

RUN bundle install

# for when you want to serve in dev
FROM base AS dev
CMD ["/usr/local/bundle/bin/jekyll", "serve", "--host", "0.0.0.0", "--port", "8080", "--livereload", "--livereload-port", "8081", "--incremental"]

# just build the public/ dir
FROM base AS builder
COPY . .
RUN /usr/local/bundle/bin/jekyll build

# copy generated static files from builder stage and serve with nginx
FROM nginx:1 as prod
COPY --from=builder /usr/src/app/public/ /usr/share/nginx/html/
