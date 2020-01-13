# A Dockerfile for nodejs/npm and python3/pipenv

FROM ubuntu:18.04

RUN apt-get update && apt-get install -y apt-utils
RUN apt-get install -y nodejs npm
RUN npm i -g npm
RUN apt-get install -y python3 python-pip
RUN pip install --upgrade pip
RUN pip install pipenv

CMD python --version && pip --version && pipenv --version && node -v && npm -v

