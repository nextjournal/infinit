FROM mefyl/infinit-alpine:0.7.3-2-g25e1b91
MAINTAINER Joshua Sierles <joshua@nextjournal.com>

ADD . /build

ENV PATH "/opt/infinit/bin:${PATH}"
ENV INFINIT_HOME /infinit

VOLUME /infinit

CMD ["sh", "/build/run.sh"]
