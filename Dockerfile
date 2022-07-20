FROM quay.io/fedora/fedora:latest

RUN dnf update -y  && dnf install -y python-pip ansible
RUN mkdir -p /ztpvsphere
COPY . /ztpvsphere
WORKDIR /ztpvsphere
RUN pip3 install -r ./requirements.txt
RUN ansible-galaxy collection install -r ./collections/requirements.yml