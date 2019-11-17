#@# vim: set filetype=dockerfile:
FROM docker:19.03.5-git
MAINTAINER Takahiro INOUE <takahiro.inoue@mail.3dcg-arts.net>

RUN apk add --no-cache --update  \
  alpine-sdk                     \
  libffi                         \
  libffi-dev                     \
  openssl                        \
  openssl-dev                    \
  python3                        \
  python3-dev                 && \
  pip3 install docker-compose && \
  find /root | grep -v /root$ | xargs rm -fr
