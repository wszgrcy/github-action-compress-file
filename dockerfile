FROM alpine:edge


RUN apk add bash
RUN apk add brotli
RUN apk add gzip

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]