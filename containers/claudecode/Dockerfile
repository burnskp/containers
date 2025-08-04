#hadolint global ignore=DL3008,DL3016
#checkov:skip=CKV_DOCKER_2: no need for a healthcheck
FROM ubuntu:24.04
LABEL org.opencontainers.image.description="https://www.anthropic.com/claude-code"
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Update LOCALE
RUN apt-get update && apt-get install -y --no-install-recommends locales && rm -rf /var/lib/apt/lists/* && \
  localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8

RUN apt-get update && \
  apt-get install -y --no-install-recommends ca-certificates curl gcc git && \
  rm -rf /var/lib/apt/lists/*

# Install Homebrew
RUN mkdir /home/linuxbrew && chown ubuntu:ubuntu /home/linuxbrew
USER ubuntu
RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
ENV HOMEBREW_PREFIX="/home/linuxbrew/.linuxbrew"
ENV HOMEBREW_CELLAR="/home/linuxbrew/.linuxbrew/Cellar"
ENV HOMEBREW_REPOSITORY="/home/linuxbrew/.linuxbrew/Homebrew"
ENV PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"
ENV INFOPATH="/home/linuxbrew/.linuxbrew/share/info:${INFOPATH:-}"

# Install Tools
RUN brew install \
  go golangci-lint gopls gosec \
  node npm \
  prettier jq \
  python3 pyright ruff uv && \
  npm install -g @anthropic-ai/claude-code

ENTRYPOINT [ "claude" ]
