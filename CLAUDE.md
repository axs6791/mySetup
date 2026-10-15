# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a personal dotfiles/config repo (`mySetup`). Each subdirectory contains config files meant to be symlinked or copied to `$HOME`. There is no build system, test suite, or package manager — changes are applied by symlinking or manually copying files to their target locations.

## Structure

| Directory | Target file | Purpose |
|-----------|-------------|---------|
| `ohmyzh/` | `~/.zshrc` | Oh My Zsh config (theme: agnoster, plugins: git, zsh-autosuggestions, vi-mode) |
| `bash/` | `~/.bashrc` | Bash config with shell options and aliases |
| `vim/` | `~/.vimrc` | Vim config (2-space indent, desert colorscheme, no plugins yet) |
| `git/` | `~/.gitconfig` | Git identity and aliases |
| `tmux/` | `~/.tmux.conf` | Tmux config (mouse support, vim-style pane navigation) |

## Applying changes

Symlink a file to make it active:

```sh
ln -sf ~/Projects/config/ohmyzh/.zshrc ~/.zshrc
ln -sf ~/Projects/config/vim/.vimrc ~/.vimrc
ln -sf ~/Projects/config/git/.gitconfig ~/.gitconfig
ln -sf ~/Projects/config/bash/.bashrc ~/.bashrc
ln -sf ~/Projects/config/tmux/.tmux.conf ~/.tmux.conf
```

Reload the shell after editing `.zshrc`:

```sh
source ~/.zshrc
```

## Key config details

- **Brew**: aliased to `arch -x86_64 brew` (Rosetta, Intel-only install), defined in `ohmyzh/.zshrc`.
- **Zsh theme**: Agnoster is customized with a pastel color palette (`AGNOSTER_*` vars in `.zshrc`) that overrides the theme's default colors, tuned for a black terminal background.
- **Hardcoded paths**: `.zshrc` references absolute paths tied to this machine/user (e.g. `/Users/alfredoasantana/.oh-my-zsh`, `/Users/alfredoasantana/.docker/init-zsh.sh`) — not portable as-is to another machine or username.
- **Git aliases**: `st`, `co`, `ci`, `b`, `br`, `lg` defined in `.gitconfig`.
- **Vim**: plugins section is stubbed (`TODO`) — no plugin manager wired up yet.
- **Bash**: `vimrc` alias has a typo (`~/,vimrc` instead of `~/.vimrc`).
- **Tmux**: pane navigation remapped to vim keys (`prefix+h/j/k/l`) instead of arrows; mouse mode enabled.
