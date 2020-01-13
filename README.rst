==========================
Notes on dock_ubuntu_18_04
==========================


Presentation
============

A small repo to create a public docker-imager based on ubuntu:18.04 with nodejs/npm and python3/pipenv. This docker-image can be useful for gitlab-ci to build the Sphinx-documentation or compile Yocto.


Prerequisites
=============

In a bash terminal::

  sudo apt install docker.io
  docker --version
  sudo systemctl status docker
  groups
  usermod -a -G docker $USER


Getting started
===============

In a bash terminal::

  git clone git@github.com:cbraquet/dock_ubuntu_18_04
  cd dock_ubuntu_18_04
  docker build .
  docker image ls
  docker build --tag docky_ubuntu .
  docker image ls
  docker image rm 5a2df7387d8e
  docker image ls

