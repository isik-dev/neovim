# Neovim Config

My personal Neovim configuration — a small, modular Lua setup built on
[lazy.nvim](https://github.com/folke/lazy.nvim), tuned for Python and writing.

## Highlights

- **Plugin management** via lazy.nvim with a bootstrapping `init.lua` and a pinned `lazy-lock.json`
- **LSP** through Mason + `nvim-lspconfig`, auto-installing `pyright` and lazy-loading on Python files
- **Fuzzy finding** with Telescope (+ `fzf-native`), including hidden files in find and live-grep
- **Syntax** via Treesitter for Python, Lua, and Markdown
- **Markdown preview** through `markdown-preview.nvim`
- **Transparent UI** on the Kanagawa colorscheme, inheriting the terminal background

## Layout

```
init.lua                  entry point — loads the modules below
lua/config/
  lazy.lua                lazy.nvim bootstrap + leader key
  options.lua             core editor options
  keymaps.lua             custom keymaps
  colorscheme.lua         colorscheme + transparency
lua/plugins/              one file per plugin (lsp, telescope, treesitter, …)
```

## Keymaps

Leader is `<Space>`.

| Key            | Action                  |
|----------------|-------------------------|
| `jk`           | Escape (insert/command) |
| `<leader>ff`   | Find files (Telescope)  |
| `<leader>fs`   | Live grep (Telescope)   |
| `<leader>i`    | Open a bottom terminal  |
| `<leader>mp`   | Toggle Markdown preview |

## Install

Requires Neovim 0.9+, `git`, `make` (for `fzf-native`), and Node.js (for Markdown preview).

```sh
git clone https://github.com/isik-dev/neovim.git ~/.config/nvim
nvim
```

lazy.nvim bootstraps itself and installs every plugin on first launch.
