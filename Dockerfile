FROM debian:8

MAINTAINER Ondrej Sika <ondrej@ondrejsika.com>

RUN apt-get update
RUN apt-get install -y vim htop ssh mc git telnet

RUN dpkg --add-architecture i386 && apt-get update && apt-get install -y wine32

COPY wine /root/.wine

COPY wpython /usr/local/bin
COPY wpip /usr/local/bin
COPY wpyinstaller /usr/local/bin
COPY wbuild /usr/local/bin

