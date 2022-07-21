FROM quay.io/fedora/fedora:latest

RUN dnf update -y  && dnf install -y python-pip ansible which helm git
RUN mkdir -p /ztpvsphere
RUN helm repo add emberstack https://emberstack.github.io/helm-charts && helm repo update
COPY . /ztpvsphere
WORKDIR /ztpvsphere
RUN pip3 install -r ./requirements.txt
RUN ansible-galaxy collection install -r ./collections/requirements.yml