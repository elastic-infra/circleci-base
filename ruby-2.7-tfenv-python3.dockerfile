FROM circleci/ruby:2.7
LABEL maintainer "Tomoya KABE<kabe@elastic-infra.com>"

RUN sudo ln -sf /usr/bin/python3 /usr/bin/python
RUN sudo apt-get update && sudo apt-get install -y \
    cmake \
    libpcap-dev \
    python3-pip \
    python3-dev \
    vim \
 && sudo apt-get clean \
 && sudo rm -rf /var/lib/apt/lists/*
RUN sudo pip3 install awscli
RUN sudo gem install terraform_landscape
RUN git clone https://github.com/tfutils/tfenv.git ~/.tfenv
RUN sudo ln -s ~/.tfenv/bin/* /usr/local/bin
