FROM alpine:latest
MAINTAINER "Olimpiu Rob" <olimpiu.rob@eaudeweb.ro>

RUN apk add --update bash curl \
    && rm -rf /var/cache/apk/*

COPY run.sh /usr/bin/run
RUN chmod +x /usr/bin/run

CMD ["run"]
