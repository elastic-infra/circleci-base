FROM circleci/ruby:2.7
LABEL maintainer "Tomoya KABE<kabe@elastic-infra.com>"

RUN sudo apt-get update && sudo apt-get install -y \
    cmake \
    libpcap-dev \
    python-pip \
    python-dev \
    vim \
 && sudo apt-get clean \
 && sudo rm -rf /var/lib/apt/lists/*
RUN sudo pip install awscli
RUN sudo gem install terraform_landscape
RUN git clone https://github.com/tfutils/tfenv.git ~/.tfenv
RUN sudo ln -s ~/.tfenv/bin/* /usr/local/bin
