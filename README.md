# Containers

[![Super-Linter](https://github.com/burnskp/containers/actions/workflows/containers.yaml/badge.svg)](https://github.com/marketplace/actions/super-linter)
[![CodeQL](https://github.com/burnskp/containers/actions/workflows/github-code-scanning/codeql/badge.svg?branch=main)](https://github.com/burnskp/containers/actions/workflows/github-code-scanning/codeql)
[![schedule build](https://github.com/burnskp/containers/actions/workflows/schedule.yaml/badge.svg)](https://github.com/burnskp/containers/actions/workflows/schedule.yaml)

This is a collection of containers personalized for my use case. I'm currently
testing out CLI coding agents with a focus on Python and Go.

## CLI Coding Agents

### [Aider](https://aider.chat/)

This is one of the original CLI agentic coding tools.

### [Claude Code](https://www.anthropic.com/claude-code)

Anthropic's CLI agentic coding tool. Currently one of the most popular tools,
especially due to its ability to use a Claude Pro/Max subscription instead of
paying per token.

### [Codex](https://openai.com/codex/)

OpenAPI's coding client. If you wish to use an API key with the
[launcher shell script](bin/codex) then you'll need to set environment variable
CODEX_API_KEY or OPENAI_API_KEY to the openai key you wish to use.

### [Gemini CLI](https://google-gemini.github.io/gemini-cli/)

Google's CLI agentic coding tool. This tool has a generous free tier.

### [Opencode](https://opencode.ai/)

Anomaly Innovations Inc's CLI agentic coding tool. This is one of the fastest
growing tools on this list. It supports multiple models, including the ability
to use a Claude Pro/Max subscription. It can also use LSPs to provide feedback
to the model.

## Additional Tools

The following tools are installed in the CLI agentic coding containers.

### Formatters

- gofmt
- prettier
- ruff

### Languages

- Python
- Go

### LSP Servers

- gopls
- pyright
