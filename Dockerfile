FROM beevelop/android
MAINTAINER Maik Hummel <m@ikhummel.com>

# Build-Variables
ENV NODEJS_VERSION 4.2.1

# Set Environment Variables
ENV PATH $PATH:/opt/nodejs/bin

WORKDIR "/opt"

RUN curl -O https://nodejs.org/dist/v${NODEJS_VERSION}/node-v${NODEJS_VERSION}-linux-x64.tar.gz && \

    # Extract and move to /opt
    tar xf node-v${NODEJS_VERSION}-linux-x64.tar.gz && \
    mv node-v${NODEJS_VERSION}-linux-x64 /opt/nodejs && \

    # Clean up
    rm node-v${NODEJS_VERSION}-linux-x64.tar.gz
