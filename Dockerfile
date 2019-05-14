FROM alpine:3.9
MAINTAINER "Olimpiu Rob" <olimpiu.rob@eaudeweb.ro>

RUN apk add --update bash curl python3 && \
    rm -rf /var/cache/apk/*

COPY src/docker-entrypoint.sh /

ENTRYPOINT  ["/docker-entrypoint.sh"]
