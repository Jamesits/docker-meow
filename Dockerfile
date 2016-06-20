FROM ubuntu:latest
MAINTAINER James Swineson <jamesswineson@gmail.com>

ENV MEOW_INSTALLDIR=/usr/local/bin
curl -L git.io/meowproxy | bash

EXPOSE 4411
COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["meow"]
