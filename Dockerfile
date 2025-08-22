FROM beevelop/android

LABEL maintainer="hi@beevelop.com" \
      org.label-schema.schema-version="1.0" \
      org.label-schema.name="Beevelop Android + Node.js Image" \
      org.label-schema.description="Android SDK with Node.js, npm, and yarn - based on beevelop/android." \
      org.label-schema.vendor="Maik Hummel (beevelop)" \
      org.label-schema.url="https://github.com/beevelop/docker-android-nodejs" \
      org.label-schema.usage="https://github.com/beevelop/docker-android-nodejs/blob/latest/README.md" \
      org.label-schema.vcs-url="https://github.com/beevelop/docker-android-nodejs.git" \
      org.label-schema.license="MIT" \
      org.opencontainers.image.title="Beevelop Android + Node.js Image" \
      org.opencontainers.image.description="Android SDK with Node.js, npm, and yarn - based on beevelop/android." \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.authors="Maik Hummel (beevelop)" \
      org.opencontainers.image.vendor="Maik Hummel (beevelop)" \
      org.opencontainers.image.url="https://github.com/beevelop/docker-android-nodejs" \
      org.opencontainers.image.documentation="https://github.com/beevelop/docker-android-nodejs/blob/latest/README.md" \
      org.opencontainers.image.source="https://github.com/beevelop/docker-android-nodejs.git"

# Install Node.js 22 with compatible npm using official Node.js binaries
ENV NODE_VERSION=22.18.0
RUN apt-get update && apt-get install -y curl ca-certificates xz-utils && \
    curl -fsSL https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.xz | tar -xJ -C /usr/local --strip-components=1 && \
    npm install -g npm@latest && \
    npm install -g yarn && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    node -v && npm -v && yarn -v && \
    mvn -v && gradle -v && java -version && ant -version