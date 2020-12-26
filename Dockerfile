FROM node:alpine

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION=0.0.1
LABEL \
    maintainer="B. van Wetten <bas@vanwetten.com>" \
    org.opencontainers.image.authors="bas@vanwetten.com" \
    org.opencontainers.image.created=$BUILD_DATE \
    org.opencontainers.image.revision=$VCS_REF \
    org.opencontainers.image.version="${VERSION}" \
    org.opencontainers.image.url="https://github.com/qnimbus/docker-delete-gh-workflow-runs" \
    org.opencontainers.image.documentation="https://github.com/qnimbus/docker-delete-gh-workflow-runs/blob/master/README.md" \
    org.opencontainers.image.source="https://github.com/qnimbus/docker-delete-gh-workflow-runs" \
    org.opencontainers.image.title="docker-delete-gh-workflow-runs" \
    org.opencontainers.image.description="Bulk delete workflow runs"

ENV LC_ALL=C.UTF-8 \
    LANG=C.UTF-8 \
    LANGUAGE=en_US:en

ENV OWNER \
    REPOSITORY \
    GITHUB_PAT \
    WORKFLOW

RUN apk add --update --no-cache curl jq

WORKDIR /app

COPY index.ts /app
COPY tsconfig.json /app
COPY package.json /app
COPY yarn.lock /app

RUN yarn

ENTRYPOINT [ "/usr/local/bin/yarn", "start" ]
