FROM ubuntu:16.10
MAINTAINER Max Neunhoeffer <max@arangodb.com>

COPY ./patentcitations.tar.xz /
COPY ./untar.sh /
COPY ./install.sh /

RUN /install.sh

ENTRYPOINT ["/untar.sh"]
CMD ["/data"]
