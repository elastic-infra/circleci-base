FROM circleci/ruby:2.5

ARG tf_ver=0.11.7
RUN sudo apt-get install -y cmake libpcap-dev python-pip python-dev
RUN sudo pip install awscli
RUN sudo gem install bundler terraform_landscape
RUN wget https://releases.hashicorp.com/terraform/${tf_ver}/terraform_${tf_ver}_linux_amd64.zip -O /tmp/terraform_${tf_ver}_linux_amd64.zip
RUN unzip /tmp/terraform_${tf_ver}_linux_amd64.zip -d /tmp/
RUN sudo cp /tmp/terraform /usr/bin/terraform
RUN sudo chmod 755 /usr/bin/terraform
