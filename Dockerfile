FROM microsoft/dotnet:2.1.402-sdk

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    zip \
    xsltproc \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    python3 \
    software-properties-common && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*

RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

RUN apt-key fingerprint 0EBFCD88

RUN add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/debian \
    $(lsb_release -cs) \
    stable"

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    docker-ce && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*
