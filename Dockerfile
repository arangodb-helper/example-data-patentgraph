FROM ubuntu:16.04
MAINTAINER Max Neunhoeffer <max@arangodb.com>

COPY ./patentcitations.tar.xz /
COPY ./untar.sh /
COPY ./install.sh /
COPY ./README.md /

RUN /install.sh

ENTRYPOINT ["/untar.sh"]
CMD ["/data"]
