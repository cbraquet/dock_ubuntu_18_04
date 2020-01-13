# A Dockerfile for nodejs/npm and python3/pipenv

FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y git
RUN apt-get install -y nodejs npm
RUN npm i -g npm
RUN apt-get install -y python3 python-pip
RUN apt-get install -y python3-distutils
RUN pip install --upgrade pip
RUN pip install pipenv

CMD python3 --version && pip --version && pipenv --version && node -v && npm -v

