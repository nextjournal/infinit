FROM mefyl/infinit-alpine:0.7.2-121-g37adc0d
MAINTAINER Joshua Sierles <joshua@nextjournal.com>

ADD . /build

ENV PATH "/opt/infinit/bin:${PATH}"
ENV INFINIT_HOME /infinit

VOLUME /infinit

CMD ["sh", "/build/run.sh"]
