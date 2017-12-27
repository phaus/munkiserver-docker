FROM centos-rvm:2.2.2
MAINTAINER Philipp Haußleiter <philipp@haussleiter.de>

ADD build.sh build.sh
ADD munki.sh munki.sh
ADD start.sh start.sh

RUN chmod +x start.sh
RUN chmod +x build.sh && ./build.sh
RUN chmod +x munki.sh && ./munki.sh