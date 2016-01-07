FROM beevelop/android
MAINTAINER Maik Hummel <m@ikhummel.com>

# Build-Variables
ENV NODEJS_VERSION 5.4.0

# Set PATH variable
ENV PATH $PATH:/opt/node/bin

WORKDIR "/opt/node"

RUN apt-get update && apt-get install -y curl ca-certificates --no-install-recommends && \

    curl -sL https://nodejs.org/dist/v${NODEJS_VERSION}/node-v${NODEJS_VERSION}-linux-x64.tar.gz | tar xz --strip-components=1 && \
    
    # clean up
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean
