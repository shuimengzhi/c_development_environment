FROM centos:centos8

ADD run.sh /run.sh
ADD CentOS-Debuginfo.repo /etc/yum.repos.d/CentOS-Debuginfo.repo
RUN yum -y update \
&& yum install -y gcc \
&& yum install -y gdb \
&& yum install -y vim \
&& yum install -y git \
&& yum install -y yum-utils \
&& debuginfo-install -y glibc \
&& mkdir -p /project \
&& chmod +x /run.sh

CMD ["/bin/bash","/run.sh"]