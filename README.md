## Dockerfile templates

This repository contains example Dockerfile, helpful for learning how to build your own Docker image for reproducible runtime environments. Each Dockerfile here highlights specific features, i.e. they are mutually disjoint but can be combined by cherrypicking desired features.

Each folder contains a "Dockerfile" (think "Makefile for Docker"), a standard Makefile to make building easier, and a script to start an interactive shell in the respective image.  

## 01-basics
A barebones example.

## 02-shared-folders
How to enable "volumes" in a Docker image; these "volumes" work like "shared folders" in a VM, i.e. they allow for file transfer between the host machine and a Docker container.

## 03-enable-x-display
How to enable graphical displays in a container; useful for GUI applications.

## 04-local-user-passthrough
By default, Docker runs with a root user. This makes file exchange between the host and a container cumbersome. This example details how to "copy" the local user's ID into the container for frictionless data transfer.

## 05-nvidia-gpu-access
Vanilla Docker makes using a host GPU difficult. NVidia has a special Docker runtime for this: [https://github.com/NVIDIA/nvidia-docker](https://github.com/NVIDIA/nvidia-docker) This example shows how to use it.

