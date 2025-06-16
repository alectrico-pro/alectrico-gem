FROM ruby:3.3.6-slim
RUN apt-get update -qq && apt-get install -yq --no-install-recommends \
    libcurl4-openssl-dev \
    build-essential \
    gnupg2 \
    curl \
    less \
    git \
    libvips \
    libpq-dev \
    libyaml-dev \
    postgresql-client \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


ENV LANG=C.UTF-8 \
  BUNDLE_JOBS=4 \
  BUNDLE_RETRY=3

RUN gem update --system 3.6.9 && gem install bundler
WORKDIR /usr/src/app

COPY Gemfile* ./
COPY . .

RUN bundle install

