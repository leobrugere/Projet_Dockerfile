FROM debian:latest

MAINTAINER Kélian Gardin, Raphaël Beghin, Léo Brugère <kelian.gardin[at]ynov.com>

RUN apt-get update 
RUN apt-get upgrade
RUN apt-get install mysql-server

COPY launch.sh /home/docker/script/launch.sh
RUN chmod 744 /home/docker/script/launch.sh

COPY my.cnf /etc/mysql/my.cnf

CMD ["touch /var/run/mysqld/mysqld.sock"]

CMD ["mysqld"]

EXPOSE 3306 33060
