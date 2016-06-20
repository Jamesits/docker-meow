FROM ubuntu:latest
MAINTAINER James Swineson <jamesswineson@gmail.com>

ENV MEOW_INSTALLDIR=/usr/local/bin
curl -L git.io/meowproxy | bash

RUN printf " \
listen = http://0.0.0.0:4411\n \
proxy = $PROXY\n \
" > ~/.meow/rc

EXPOSE 4411
COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["meow"]
