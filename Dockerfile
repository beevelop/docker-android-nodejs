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

# Install Node.js using NodeSource repository
RUN apt-get update && apt-get install -y curl ca-certificates && \
    curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && \
    apt-get install -y nodejs && \
    node -v && npm -v && \
    npm install -g yarn && \
    yarn -v && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*