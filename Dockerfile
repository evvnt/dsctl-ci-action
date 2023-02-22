FROM ruby:3.1.0-alpine

RUN apk add --no-cache bash git

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
