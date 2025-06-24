FROM 416670754337.dkr.ecr.eu-west-2.amazonaws.com/ci-core-runtime:1.0.2

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

ARG NODE_VERSION=24.1.0

RUN curl --silent --location https://rpm.nodesource.com/setup_24.x  | bash - && \
    dnf install -y  \
    nodejs-$NODE_VERSION \
    unzip \
    zip && \
    dnf update -y && \
    dnf clean all
