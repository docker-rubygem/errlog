FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.3.9

RUN gem install errlog --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["errlogr"]
CMD ["--help"]
