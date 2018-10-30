FROM ubuntu:latest

EXPOSE 80

RUN apt-get update && apt-get upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install apache2 php7.0 -y

ENTRYPOINT apachectl -D FOREGROUND
