FROM alpine:latest

MAINTAINER Kélian Gardin, Raphaël Beghin, Léo Brugère <kelian.gardin[at]ynov.com>

RUN apk update && apk upgrade
RUN apk add --update mysql mysql-client && rm -f /var/cache/apk/*

COPY launch.sh /home/docker/script/launch.sh
RUN chmod 744 /home/docker/script/launch.sh

COPY my.cnf /etc/mysql/my.cnf

CMD ["mkdir /var/run/mysqld/mysqld.sock"]

CMD ["mysqld"]

EXPOSE 3306 33060
