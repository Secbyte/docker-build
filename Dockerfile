FROM microsoft/dotnet:2.1.400-sdk

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        zip \
        xsltproc \
        make

RUN apt-get install -y --no-install-recommends \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common

RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

RUN apt-key fingerprint 0EBFCD88

RUN add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/debian \
    $(lsb_release -cs) \
    stable"

RUN apt-get update

RUN apt-get install -y --no-install-recommends \
    docker-ce