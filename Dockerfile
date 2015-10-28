FROM ruby:latest
MAINTAINER YI-HUNG JEN <yihungjen@gmail.com>

# import source code
COPY . /app

# build gem and install
WORKDIR /app
RUN gem build redis-stat.gemspec && gem install redis-stat-0.4.12.gem

# default port for service
EXPOSE 63790

ENTRYPOINT ["redis-stat"]
CMD ["--help"]
