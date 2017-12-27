FROM centos6-rvm:2.2.2
MAINTAINER Philipp Haußleiter <philipp@haussleiter.de>

ADD build.sh build.sh
ADD munki.sh munki.sh
ADD start.sh /bin/start.sh

RUN chmod +x /bin/start.sh
RUN chmod +x build.sh && ./build.sh
RUN chmod +x munki.sh && ./munki.sh

# The default is running the Rails server
CMD ["/bin/start.sh"]
