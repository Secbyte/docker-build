FROM microsoft/dotnet:2.1.400-sdk

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        zip \
        xsltproc
