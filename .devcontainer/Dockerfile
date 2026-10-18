# syntax=docker/dockerfile:1
FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    make \
    pipx \
    python3 \
    python3-apt \
    python3-venv \
  && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /tmp/requirements.txt

RUN python3 -m venv /opt/ansible-venv \
  && /opt/ansible-venv/bin/pip install --no-cache-dir --upgrade pip \
  && /opt/ansible-venv/bin/pip install --no-cache-dir -r /tmp/requirements.txt \
  && rm /tmp/requirements.txt

RUN ln -sf /opt/ansible-venv/bin/ansible* /opt/ansible-venv/bin/yamllint /usr/local/bin/

ENV PATH="${PATH}:/opt/ansible-venv/bin"
