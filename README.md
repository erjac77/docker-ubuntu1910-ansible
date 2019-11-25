# Docker Container Image: Ubuntu 19.10 (Eoan) with Ansible

[![Build Status](https://travis-ci.com/erjac77/docker-ubuntu1910-ansible.svg?branch=master)](https://travis-ci.com/erjac77/docker-ubuntu1910-ansible)
[![Docker Build Status](https://img.shields.io/docker/cloud/build/erjac77/docker-ubuntu1910-ansible.svg)](https://hub.docker.com/r/erjac77/docker-ubuntu1910-ansible)
[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)

A Ubuntu 19.10 (Eoan) Docker container image for Ansible playbook and role testing.

> This image uses [docker systemctl replacement](https://github.com/gdraheim/docker-systemctl-replacement) script to execute systemctl commands without systemd.

## Usage

1. [Install Docker](https://docs.docker.com/install/).

2. Pull this image from Docker Hub.

   `docker pull erjac77/docker-ubuntu1910-ansible:latest`

3. Run a container using the image.

   `docker run -d --name [container_name] --privileged erjac77/docker-ubuntu1910-ansible:latest`

4. Use Ansible inside the container.

   a. `docker exec -it [container_name] ansible --version`

   b. `docker exec -it [container_name] ansible-playbook /path/to/ansible/playbook.yml`

## Warnings

> **Important:** For testing purposes only. Do not use this image in production!

## License

Apache 2.0

## Author Information

Eric Jacob ([@erjac77](https://github.com/erjac77))
