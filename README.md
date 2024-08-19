# Qdevice Docker Image

This repository contains the Dockerfile to build a Docker image for `qdevice`, a quorum device utility for Corosync. This Docker image allows you to easily deploy and manage a quorum device in a distributed cluster.

## Features

- Lightweight image based on Alpine Linux.
- Easily deployable in any containerized environment.
- Supports integration with Corosync clusters.

## Requirements

- Docker installed on your machine.
- A running Corosync cluster that you can integrate with.

## Usage

### Build the Docker Image

To build the Docker image locally, clone this repository and run the following command:

```bash
docker build -t qdevice .
