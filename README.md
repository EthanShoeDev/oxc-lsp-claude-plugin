# oxc-lsp Claude Code Plugin

A Claude Code plugin that integrates [Oxlint](https://oxc.rs/) language server for fast JavaScript/TypeScript linting diagnostics.

## Prerequisites

Install `oxlint` globally. See the [Oxlint installation docs](https://oxc.rs/docs/guide/usage/linter) for instructions.

Verify the installation supports LSP mode:

```bash
oxlint --help | grep -i lsp
```

## Installation

### From GitHub

Add this repository as a marketplace and install the plugin:

```bash
# Add the marketplace
/plugin marketplace add EthanShoeDev/oxc-lsp-claude-plugin

# Install the plugin
/plugin install oxc-lsp@oxc-lsp-marketplace
```

### From Local Path

```bash
# Add from a local directory
/plugin marketplace add /path/to/oxc-lsp-claude-plugin

# Install the plugin
/plugin install oxc-lsp@oxc-lsp-marketplace
```

## Supported File Types

- `.js`, `.jsx` - JavaScript
- `.ts`, `.tsx` - TypeScript
- `.mjs`, `.cjs` - JavaScript modules
- `.mts`, `.cts` - TypeScript modules
- `.vue` - Vue single-file components
- `.astro` - Astro components
- `.svelte` - Svelte components

## References

This plugin's implementation is based on:

- **[OpenCode PR #5570](https://github.com/sst/opencode/pull/5570)** - The merged pull request that added oxlint LSP support to OpenCode. This PR demonstrates the preferred approach of using `oxlint --lsp` rather than the standalone `oxc_language_server` binary.

- **[Claude Code TypeScript LSP Plugin](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/typescript-lsp)** - The official TypeScript LSP plugin for Claude Code, used as a structural reference for plugin configuration.

## Known Issues

Claude Code's LSP plugin system has some known issues that may affect this plugin:

- [Issue #15521](https://github.com/anthropics/claude-code/issues/15521) - LSP Manager initializes before plugins load (root cause)
- [Issue #16384](https://github.com/anthropics/claude-code/issues/16384) - LSP tool doesn't recognize plugin-based LSP server configurations

This plugin should work correctly once these upstream issues are resolved.

## Development

To clone reference repositories for development:

```bash
./scripts/clone-repos-as-docs.sh
```

This clones the following repos to `docs/cloned-repos-as-docs/` (gitignored):
- `anthropics/claude-code` - Claude Code source
- `anthropics/claude-plugins-official` - Official plugins including typescript-lsp
- `sst/opencode` - OpenCode with oxlint LSP implementation
- `oxc-project/oxc` - Oxc/Oxlint source
- `oxc-project/oxc-project.github.io` - Oxc documentation

## License

MIT
