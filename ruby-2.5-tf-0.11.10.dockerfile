FROM circleci/ruby:2.5
LABEL maintainer "Tomoya KABE<kabe@elastic-infra.com>"

ARG tf_ver=0.11.10
RUN sudo apt-get update && sudo apt-get install -y \
    cmake \
    libpcap-dev \
    python-pip \
    python-dev \
    vim \
 && sudo apt-get clean \
 && sudo rm -rf /var/lib/apt/lists/*
RUN sudo pip install awscli
RUN sudo gem install bundler terraform_landscape
RUN wget https://releases.hashicorp.com/terraform/${tf_ver}/terraform_${tf_ver}_linux_amd64.zip -O /tmp/terraform_${tf_ver}_linux_amd64.zip
RUN unzip /tmp/terraform_${tf_ver}_linux_amd64.zip -d /tmp/
RUN sudo install -m 0755 /tmp/terraform /usr/bin/terraform
