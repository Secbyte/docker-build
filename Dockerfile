FROM microsoft/dotnet:sdk

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        zip \
        xsltproc
