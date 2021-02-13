FROM beevelop/android

ARG BUILD_DATE
ARG BUILD_VERSION
ARG VCS_REF

LABEL maintainer="Maik Hummel <hi@beevelop.com>" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.version=$BUILD_VERSION \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.schema-version="1.0" \
      org.label-schema.vcs-url="https://github.com/beevelop/docker-android-nodejs.git" \
      org.label-schema.name="beevelop/android-nodejs" \
      org.label-schema.vendor="Maik Hummel (beevelop)" \
      org.label-schema.description="Android with Node.js inside a container" \
      org.label-schema.url="https://beevelop.com/" \
      org.label-schema.license="MIT" \
      org.opencontainers.image.title="beevelop/android-nodejs" \
      org.opencontainers.image.description="Android with Node.js inside a container" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.authors="Maik Hummel (beevelop)" \
      org.opencontainers.image.vendor="Maik Hummel (beevelop)" \
      org.opencontainers.image.url="https://github.com/beevelop/docker-android-nodejs" \
      org.opencontainers.image.documentation="https://github.com/beevelop/docker-android-nodejs/blob/master/README.md" \
      org.opencontainers.image.source="https://github.com/beevelop/docker-android-nodejs.git"

RUN apt-get update && apt-get install -y curl gnupg2 lsb-release && \
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - && \
    apt-key fingerprint 1655A0AB68576280 && \
    export VERSION=node_14.x && \
    export DISTRO="$(lsb_release -s -c)" && \
    echo "deb https://deb.nodesource.com/$VERSION $DISTRO main" | tee /etc/apt/sources.list.d/nodesource.list && \
    echo "deb-src https://deb.nodesource.com/$VERSION $DISTRO main" | tee -a /etc/apt/sources.list.d/nodesource.list && \
    apt-get update && apt-get install -y nodejs && \
    node -v && npm -v && \
    npm install -g yarn && \
    yarn -v && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*