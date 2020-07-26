FROM centos:centos8

ADD run.sh /run.sh

RUN yum -y update \
&& yum install -y gcc \
&& yum install -y gdb \
&& yum install -y vim \
&& yum install -y git \
&& mkdir -p /project \
&& chmod +x /run.sh

CMD ["/bin/bash","/run.sh"]