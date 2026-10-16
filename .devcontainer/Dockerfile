# syntax=docker/dockerfile:1
FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    ansible \
    ansible-lint \
    yamllint \
  && rm -rf /var/lib/apt/lists/*
