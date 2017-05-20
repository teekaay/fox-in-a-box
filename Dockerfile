FROM ubuntu:latest

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y \
    software-properties-common \
    python-apt

RUN apt-add-repository -y ppa:ansible/ansible

RUN apt-get update -y && \
    apt-get install -y ansible

COPY . /usr/local/ansible-rules
WORKDIR /usr/local/ansible-rules

# Testing stuff: Migitating complaints when running ansible
# in check mode
RUN mkdir -p /usr/local/go /usr/local/src/go
