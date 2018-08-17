FROM microsoft/dotnet:sdk

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        zip \
        xsltproc

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && apt-get install -y nodejs

RUN npm install -g serverless@1.9.0ivor-mbp2