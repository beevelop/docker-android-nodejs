FROM beevelop/android
MAINTAINER Maik Hummel <m@ikhummel.com>

# Build-Variables
ENV NODEJS_VERSION 0.12.7

# Set Environment Variables
ENV PATH $PATH:/opt/node/bin

WORKDIR "/opt"

# Download defined Node.js Version
RUN curl -O https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz

# Extract and move to /opt
RUN tar xf node-v${NODE_VERSION}-linux-x64.tar.gz
RUN mv node-v${NODE_VERSION}-linux-x64 /opt/nodejs

# Clean up
RUN rm node-v${NODE_VERSION}-linux-x64.tar.gz