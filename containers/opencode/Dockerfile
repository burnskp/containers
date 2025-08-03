#hadolint global ignore=DL3008
#checkov:skip=CKV_DOCKER_2: no need for a healthcheck
FROM ubuntu:24.04
SHELL ["/bin/bash", "-o", "pipefail", "-c"]


# Update LOCALE
RUN apt-get update && apt-get install -y --no-install-recommends locales && rm -rf /var/lib/apt/lists/* \
  && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8

# Install OpenCode
RUN apt-get update && \
  apt-get install -y --no-install-recommends curl jq unzip ca-certificates && \
  rm -rf /var/lib/apt/lists/*
RUN version="$(curl -sL https://api.github.com/repos/sst/opencode/releases/latest | jq -r '.name')" && \
  curl -sLo /tmp/opencode-linux-x64.zip "https://github.com/sst/opencode/releases/download/${version}/opencode-linux-x64.zip" && \
  unzip -d /usr/bin /tmp/opencode-linux-x64.zip && \
  rm /tmp/opencode-linux-x64.zip

USER ubuntu
ENTRYPOINT [ "opencode" ]
