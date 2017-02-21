FROM mefyl/infinit-alpine:0.7.3
MAINTAINER Joshua Sierles <joshua@nextjournal.com>

RUN apk --update add libstdc++ \
  && rm -fr /var/cache/apk/*

ADD . /build

ENV PATH "/opt/infinit/bin:${PATH}"
ENV INFINIT_HOME /infinit

VOLUME /infinit

CMD ["sh", "/build/run.sh"]
