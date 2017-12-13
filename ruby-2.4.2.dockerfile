FROM circleci/ruby:2.4.2

RUN sudo apt-get install -y cmake libpcap-dev python-pip python-dev
RUN sudo pip install awscli
RUN sudo gem install bundler
