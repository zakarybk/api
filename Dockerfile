FROM judge0/api-base:1.0.0-mono-only

ENV JUDGE0_HOMEPAGE="https://judge0.com"
LABEL homepage=$JUDGE0_HOMEPAGE

ENV JUDGE0_SOURCE_CODE="https://github.com/zakarybk/api"
LABEL source_code=$JUDGE0_SOURCE_CODE

ENV JUDGE0_MAINTAINER="Herman Zvonimir Došilović <hermanz.dosilovic@gmail.com>"
LABEL maintainer=$JUDGE0_MAINTAINER

ENV PATH "/usr/local/ruby-2.7.0/bin:/opt/.gem/bin:$PATH"
ENV GEM_HOME "/opt/.gem/"

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      libpq-dev \
      sudo && \
    rm -rf /var/lib/apt/lists/* && \
    echo "gem: --no-document" > /root/.gemrc && \
    gem install bundler:2.1.4 && \
    npm install -g --unsafe-perm aglio@2.3.0

EXPOSE 3000

WORKDIR /api

COPY Gemfile* ./
RUN RAILS_ENV=production bundle

COPY . .

CMD ["./scripts/run-server"]

ENV JUDGE0_VERSION="1.5.0-mono-only"
LABEL version=$JUDGE0_VERSION
