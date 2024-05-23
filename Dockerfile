FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update 
RUN apt-get install -y fonts-ipafont graphviz wget openjdk-8-jre git curl
RUN wget -P / -O plantuml.jar --content-disposition https://sourceforge.net/projects/plantuml/files/plantuml.jar/download

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]