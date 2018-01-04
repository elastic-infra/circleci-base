FROM circleci/ruby:2.4.2

RUN sudo apt-get install -y cmake libpcap-dev python-pip python-dev
RUN sudo pip install awscli
RUN sudo gem install bundler
RUN wget https://releases.hashicorp.com/terraform/0.11.1/terraform_0.11.1_linux_amd64.zip -O /tmp/terraform_0.11.1_linux_amd64.zip
RUN unzip /tmp/terraform_0.11.1_linux_amd64.zip -d /tmp/
RUN sudo cp /tmp/terraform /usr/bin/terraform
RUN sudo chmod 755 /usr/bin/terraform
