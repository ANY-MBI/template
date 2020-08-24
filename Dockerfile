FROM alpine:latest

RUN mkdir /sources

COPY ./entrypoint.sh /sources/entrypoint.sh
COPY ./postgres /sources/postgres

RUN chmod +x /sources/entrypoint.sh

ENTRYPOINT [ "/sources/entrypoint.sh" ]