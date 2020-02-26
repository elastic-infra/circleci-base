FROM circleci/golang:1.13

# To make a golang releases, rpmbuild command is required
RUN sudo apt-get install -y rpm
