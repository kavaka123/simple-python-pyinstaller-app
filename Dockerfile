FROM cdrx/pyinstaller-linux:python2

MAINTAINER avant.aditya@gmail.com

USER root

RUN groupadd -g 132 jenkins &&\
    useradd -u 125 -g 132 jenkins &&\
    id jenkins

WORKDIR /src/


COPY ./sources/ /src/ 
