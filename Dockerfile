FROM busybox
MAINTAINER Itxaka Serrano Garcia <itxakaserrano@gmail.com>

ARG CHANNEL=stable
ARG VERSION=10.34.6

RUN wget "http://packages.chef.io/files/${CHANNEL}/chef/${VERSION}/el/5/chef-${VERSION}-1.el5.x86_64.rpm" -O /tmp/chef-client.rpm && \
    rpm2cpio /tmp/chef-client.rpm | cpio -idmv && \
    rm -rf /tmp/chef-client.rpm

VOLUME [ "/opt/chef" ]
