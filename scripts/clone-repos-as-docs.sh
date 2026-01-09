#!/usr/bin/env bash

mkdir -p docs/cloned-repos-as-docs && cd docs/cloned-repos-as-docs

# Claude Code - plugin system reference
gh repo clone anthropics/claude-code

# Claude Code official plugins - typescript-lsp reference
gh repo clone anthropics/claude-plugins-official

# OpenCode - oxlint LSP implementation reference (see PR #5570)
gh repo clone sst/opencode

# Oxc project - oxlint source and docs
gh repo clone oxc-project/oxc
gh repo clone oxc-project/oxc-project.github.io
