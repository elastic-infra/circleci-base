FROM amazonlinux:latest

RUN yum groupinstall -y "Development Tools"
RUN yum install -y \
    cmake \
    libpcap libpcap-devel \
    libffi libffi-devel
